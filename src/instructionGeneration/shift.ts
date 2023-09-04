/**
 * Copyright 2023 University of Adelaide
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { defaults } from "lodash-es";

import { AllocationFlags, Flags, FlagState } from "@/enums";
import { limbify, matchIMM, matchXD } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import { AllocationRes, asm, CryptOpt } from "@/types";

// assumes, that arg[2] is always val_imm
export function shiftLeft(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  if (c.arguments.length !== 2) {
    throw new Error("unsuppoted shl with other than 2 args");
  }
  if (c.datatype !== "u64") {
    throw new Error("unsuppoted shl not targetting u64 ");
  }
  const [inVarname, shiftWidth] = c.arguments;
  const allocs = ra.getCurrentAllocations();
  const invar = allocs[inVarname].datatype === "u128" ? limbify(inVarname)[0] : inVarname;

  const allocation = ra.allocate({
    oReg: c.name, // length 0
    in: [invar],
    allocationFlags:
      AllocationFlags.DISALLOW_XMM |
      AllocationFlags.SAVE_FLAG_OF |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.IN_0_AS_OUT_REGISTER,
  });

  if (Number(shiftWidth) >= 64) {
    throw new Error("Warning. Check if shifts >=64 are not causing undefined behaviour.");
  }

  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  ra.declareFlagState(Flags.OF, FlagState.KILLED);
  // TODO: Consider using shlx, no need to save Flags, dest must be a reg, but can be different to src,
  // shiftWidth cannot not be imm.
  return [
    ...ra.pres,
    `shl ${allocation.oReg[0]}, ${shiftWidth}; ${c.name[0]} <- ${inVarname}<< ${shiftWidth}`,
  ];
}
export function shiftRight(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  let res: asm[];

  /*fiat's version of shrd without --no-wide-int */
  if (c.datatype === "u64" && c.arguments.length === 3) {
    return shiftRightDouble(c);
  }
  /*llvm*/
  if (c.datatype === "u128") {
    if (
      c.name.length !== 1 ||
      c.arguments.length !== 2 ||
      !matchXD(c.arguments[0]) ||
      !matchIMM(c.arguments[1])
    ) {
      console.debug(c);
      throw new Error("bad usage of >>");
    }
    const allocs = ra.getCurrentAllocations();
    if (allocs[c.arguments[0]]?.datatype !== "u128") {
      throw new Error("can only shr u128");
    }

    const outs = limbify(c.name);
    const shiftWidth = c.arguments[1];
    const ins = limbify(c.arguments[0]);

    if (!ins[1]) {
      throw new Error("must have two in-limbs at this point");
    }
    if (Number(shiftWidth) == 64) {
      const { oReg } = ra.allocate({
        oReg: outs,
        in: [ins[1]],
        allocationFlags: AllocationFlags.DISALLOW_XMM | AllocationFlags.IN_0_AS_OUT_REGISTER,
      });
      ra.declare128(c.name[0]);
      console.warn(
        "I am pretty sure this results in wrong results... yeah the manual is not too clear on that but thats a nop.",
      );
      // TODO:
      return [
        ...ra.pres,
        `; shift width is 64, makes hi<-0, lo<-hi`,
        // `mov ${oReg[0]}, ${inr[0]} ; ${outs[1]}<- 0;  `, <--done via AllocationFlag
        `mov ${oReg[1]}, 0x0; hi ${outs[1]}<- 0; `,
      ];
    } else {
      if (!outs[1]) {
        throw new Error("must have two out-limbs at this point");
      }
      // olo is in oReg[0]
      const ins1 = ra.backupIfVarHasDependencies(ins[1], outs[1]);
      const { oReg } = ra.allocate({
        oReg: [outs[0]],
        in: [ins[0]],
        allocationFlags:
          AllocationFlags.DISALLOW_XMM |
          AllocationFlags.SAVE_FLAG_OF |
          AllocationFlags.SAVE_FLAG_CF |
          AllocationFlags.IN_0_AS_OUT_REGISTER,
      });
      ra.declare128(c.name[0]);
      res = [
        ...ra.pres,
        `shrd ${oReg[0]}, ${ins1}, ${shiftWidth}; lo`,
        `shr ${ins1}, ${shiftWidth}; ${outs[1]}>>=${shiftWidth}`,
      ];
    }
  } else {
    // thing is, that we can have u64 = x1 >> NN, with x1 being u128 --> shrd
    const [inVarname, shiftWidth] = c.arguments as string[];
    const allocs = ra.getCurrentAllocations();
    if (allocs[inVarname].datatype === "u128") {
      if (Number(shiftWidth) >= 64) {
        throw new Error("Warning. Check if shifts >=64 are not causing undefined behaviour.");
      }

      // now we are a shld
      const newOp = defaults({ arguments: [...limbify(c.arguments[0]), shiftWidth] }, c);
      return shiftRightDouble(newOp);
    }

    const allocation = ra.allocate({
      oReg: c.name, // length 0
      in: [inVarname],
      allocationFlags:
        AllocationFlags.DISALLOW_XMM |
        AllocationFlags.SAVE_FLAG_OF |
        AllocationFlags.SAVE_FLAG_CF |
        AllocationFlags.IN_0_AS_OUT_REGISTER,
    });

    res = [
      ...ra.pres,
      `shr ${allocation.oReg[0]}, ${shiftWidth}; ${c.name[0]} <- ${inVarname}>> ${shiftWidth}`,
    ];
  }
  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  ra.declareFlagState(Flags.OF, FlagState.KILLED);
  return res;
}

export function shiftRightDouble(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  let [inVarname, fillFromVarname, shiftWidth] = c.arguments as string[];
  if (Number(shiftWidth) == 64) {
    ra.allocate({
      oReg: c.name,
      in: [fillFromVarname],
      allocationFlags: AllocationFlags.DISALLOW_XMM | AllocationFlags.IN_0_AS_OUT_REGISTER,
    });
    return ra.pres.concat(`; (actually a shrd, but with width 64, so just a mov(or rename if at all))`);
  }
  switch (c.operation) {
    case ">>":
    case "shrd": {
      return _shrd(c.name, inVarname, fillFromVarname, shiftWidth).asm;
    }
    case "sar": {
      /*constraints*/
      if (c.arguments.length === 2 && c.datatype === "u128" && c.name.length === 1) {
        const outlimbs = limbify(c.name);
        const inLimbs = limbify(c.arguments[0]);

        shiftWidth = c.arguments[1];
        inVarname = inLimbs[0];
        if (!inLimbs[1]) {
          throw new Error("must have two in-limbs at this point");
        }
        fillFromVarname = inLimbs[1];

        const { asm, allocation } = _shrd(outlimbs, inVarname, fillFromVarname, shiftWidth);
        // now we need to make the high limb sar'ed
        const hi_limb_reg = allocation.oReg[1];
        ra.declare128(c.name[0]);

        // TODO: If fillFromVarname has deps, use sarx (and get shiftWidth via allocate), if nor, use sar (no mov)
        // const code = asm.concat(
        //   `mov ${hi_limb_reg}, ${allocation.in[1]}`,
        //   `sar ${hi_limb_reg}, ${shiftWidth}; hi-limb`,
        // );
        // return code;

        return asm.concat(
          `mov ${hi_limb_reg}, ${shiftWidth}; abusing out reg for imm to sarx`,
          `sarx ${hi_limb_reg}, ${allocation.in[1]}, ${hi_limb_reg}; hi-limb`,
        );
      } else {
        throw new Error("unsuppoted");
      }
    }
    default:
      throw new Error("wrong operation in function.");
  }
}
function _shrd(
  oReg: string[],
  inVarname: string,
  fillFromVarname: string,
  shiftWidth: string,
): { asm: asm[]; allocation: AllocationRes } {
  const ra = RegisterAllocator.getInstance();
  const allocation = ra.allocate({
    oReg,
    in: [inVarname, fillFromVarname],
    allocationFlags:
      AllocationFlags.SAVE_FLAG_OF |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.IN_0_AS_OUT_REGISTER |
      AllocationFlags.DISALLOW_XMM |
      AllocationFlags.DISALLOW_MEM,
  });

  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  ra.declareFlagState(Flags.OF, FlagState.KILLED);

  return {
    asm: [
      ...ra.pres,
      `shrd ${allocation.oReg[0]}, ${allocation.in[1]}, ${shiftWidth}; ${oReg[0]} <- ${fillFromVarname}||${inVarname} >> ${shiftWidth}`,
    ],
    allocation,
  };
}
