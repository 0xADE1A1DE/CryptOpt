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

import { cloneDeep } from "lodash-es";

import { AllocationFlags, C_DI_INSTRUCTION_AND, DECISION_IDENTIFIER, Flags, FlagState } from "@/enums";
import {
  getByteRegFromQwReg,
  IMM_64_BIT_IMM,
  limbify,
  limbifyImm,
  LSB_MAPPING,
  matchIMM,
  matchXD,
} from "@/helper";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function bitwiseOp(c: CryptOpt.StringOperation): asm[] {
  switch (c.operation) {
    case "&": {
      const ra = RegisterAllocator.getInstance();
      // sanity check
      if (c.arguments[1] == "0xffffffffffffffff" && c.datatype == "u64") {
        //  maybe we should rewrite this operation as a limb[0] in the preprocessing
        let src = c.arguments[0];
        if (ra.getCurrentAllocations()[src].datatype == "u128") {
          ra.declareDatatypeForVar(c.arguments[0] as CryptOpt.VarnameNL, "u64");
          src = limbify(src)[0];
        }
        ra.lazyMov(src, c.name[0]);
        return [`;lazyMov'ed ${c.name[0]}<-${src} (becaue an and with all 64bits is... lets say redundant)`];
      }
      const decision = c.decisions[DECISION_IDENTIFIER.DI_INSTRUCTION_AND];
      if (!decision) {
        // if there is no decision, which may be the case for AND-s with imms, which are not bzhi-able 'fallback' to AND
        return and(c);
      }
      let choice: C_DI_INSTRUCTION_AND;
      const allocs = ra.getCurrentAllocations();

      const bitmask = c.arguments[1]; // 0x1ffffff
      const bits = LSB_MAPPING[bitmask]; //  0x19

      const ba = allocs[bits];
      const bm = allocs[bitmask];
      let comment = "; ";
      if (ba?.store) {
        comment += `${bits} are in ${ba.store}`;
      }
      if (bm?.store) {
        comment += `${bitmask} is in ${bm.store}`;
      }
      if (ba && !bm) {
        choice = C_DI_INSTRUCTION_AND.C_BZHI;
        comment += `-> using ${choice} -- smart, right?`;
      } else if (!ba && bm) {
        choice = C_DI_INSTRUCTION_AND.C_AND;
        comment += `-> using ${choice}  -- smart, right?`;
      } else {
        choice = Paul.chooseInstructionAND();
        comment += `-> using ${choice}, cuz Paul.`;
      }

      switch (choice) {
        case C_DI_INSTRUCTION_AND.C_BZHI:
          return [comment, ...bzhi(c)];
        case C_DI_INSTRUCTION_AND.C_AND:
          return [comment, ...and(c)];
        default:
          throw new Error("TSNH. Choice is neither and nor bzhi.");
      }
    }
    case "^":
      return xor(c);
    case "|":
      return or(c);
    default:
      throw new Error("TSNH. Unknown bitwise op. Must be AND/OR/XOR.");
  }
}

function and(_c: CryptOpt.StringOperation): asm[] {
  const c = cloneDeep(_c);
  if (c.datatype === "u128") {
    return and128(c);
  }
  const ra = RegisterAllocator.getInstance();
  const allocs = ra.getCurrentAllocations();
  if (c.datatype === "u64" && c.arguments.length === 2 && allocs[c.arguments[0]]?.datatype === "u128") {
    // if x10 (arg[0]) is a u128, and we output a u64, we actually want
    // x10_0 & imm
    c.arguments[0] = limbify(c.arguments[0])[0];
  }

  ra.initNewInstruction(c);
  const u1 = c.arguments.every((arg) => arg in allocs && allocs[arg].datatype === "u1");

  // will clear OF/CF, ZF according to result
  // `and`|`or` can do reg/mem = reg/mem and/or imm (iff imm <= MAX_32) as well as reg = reg and/or r/m
  // as in this case, arg_1 is imm64. we cannot use `and|or xx, imm`
  //TODO: so disallow imm for the moment

  const allocation = ra.allocate({
    oReg: c.name,
    in: c.arguments,
    allocationFlags:
      AllocationFlags.SAVE_FLAG_OF |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.IN_0_AS_OUT_REGISTER |
      AllocationFlags.SAME_SIZE_READ |
      AllocationFlags.DISALLOW_XMM |
      AllocationFlags.DISALLOW_IMM,
  });
  ra.declareFlagState(Flags.CF, FlagState.ZERO);
  ra.declareFlagState(Flags.OF, FlagState.ZERO);

  const oreg64 = allocation.oReg[0];
  const oreg8 = getByteRegFromQwReg(oreg64);
  if (u1) {
    // because u1 & u1 => u1
    ra.declareDatatypeForVar(c.name[0] as CryptOpt.Varname, "u1");
  }

  // since IN_0 is in out we can skip the first one
  const [, ...remainingArgs] = allocation.in;
  return [
    ...ra.pres,
    ...remainingArgs.map(
      (inReg, i) =>
        `and ${u1 ? oreg8 : oreg64}, ${inReg}; ${c.name[0]} <- ${c.arguments[0]}&${c.arguments[i + 1]}`,
    ),
  ];
}

function and128(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  // first usecase:
  //
  // arguments[0] is xDD && u128 and arguments[1] is u128 imm
  if (c.arguments.length !== 2) {
    throw new Error("currently unsupported, to have more than 2 args in and128");
  }
  if (!matchXD(c.arguments[0]) || ra.getCurrentAllocations()[c.arguments[0]].datatype !== "u128") {
    throw new Error("arg[0] must be xdd(u128)");
  }

  if (!matchIMM(c.arguments[1])) {
    throw new Error("arg[1] must be imm");
  }
  const immlimbs = limbifyImm(c.arguments[1]);

  let res = [] as asm[];
  if (immlimbs.length > 1) {
    const allocation = ra.allocate({
      oReg: limbify(c.name),
      in: [...limbify(c.arguments[0]), ...immlimbs],
      allocationFlags:
        AllocationFlags.IN_0_AS_OUT_REGISTER |
        AllocationFlags.SAVE_FLAG_OF |
        AllocationFlags.SAME_SIZE_READ |
        AllocationFlags.SAVE_FLAG_CF |
        AllocationFlags.DISALLOW_XMM |
        AllocationFlags.DISALLOW_IMM,
    });
    ra.declare128(c.name[0]);
    res = [
      ...ra.pres,
      // `mov ${allocation.oReg[0]}, ${allocation.in[0]}`,// done via flag
      `and ${allocation.oReg[0]}, ${allocation.in[2]}`,
      `mov ${allocation.oReg[1]}, ${allocation.in[1]}`,
      `and ${allocation.oReg[1]}, ${allocation.in[3]}`,
    ];
  } else {
    // only lo limb, since hi-limb will be zero'ed anyway
    const allocation = ra.allocate({
      oReg: c.name,
      in: [limbify(c.arguments[0])[0], c.arguments[1]],
      allocationFlags:
        AllocationFlags.IN_0_AS_OUT_REGISTER |
        AllocationFlags.SAME_SIZE_READ |
        AllocationFlags.SAVE_FLAG_OF |
        AllocationFlags.SAVE_FLAG_CF |
        AllocationFlags.DISALLOW_XMM |
        AllocationFlags.DISALLOW_IMM,
    });

    ra.zext(c.name[0], c.name[0]);
    res = [...ra.pres, `and ${allocation.oReg[0]}, ${allocation.in[1]}; lo limb and'ed`];
  }
  ra.declareFlagState(Flags.CF, FlagState.ZERO);
  ra.declareFlagState(Flags.OF, FlagState.ZERO);
  return res;
}

function bzhi(_c: CryptOpt.StringOperation): asm[] {
  // will clear OF, kills CF (according to res).
  const c = cloneDeep(_c);
  const ra = RegisterAllocator.getInstance();
  const allocs = ra.getCurrentAllocations();
  ra.initNewInstruction(c);
  if (c.datatype === "u128" && c.arguments[1].length > IMM_64_BIT_IMM.length) {
    /*cannot happen at the moment, because then the bzhi would not be in decisions, because the imm would be >64bit, which is currently not in LSB_MAPPING*/
    throw new Error("out-u128 not supported atm.");
  }

  if (c.arguments.length === 2 && allocs[c.arguments[0]]?.datatype === "u128") {
    // if x10 (arg[0]) is a u128, and we output a u64, we actually want
    // x10_0 & imm
    c.arguments[0] = limbify(c.arguments[0])[0];
  }
  const bits = LSB_MAPPING[c.arguments[1]];
  const allocation = ra.allocate({
    oReg: c.name,
    in: [c.arguments[0], bits],
    allocationFlags:
      AllocationFlags.SAME_SIZE_READ |
      AllocationFlags.SAVE_FLAG_OF |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.DISALLOW_XMM |
      AllocationFlags.DISALLOW_IMM,
  });
  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  ra.declareFlagState(Flags.OF, FlagState.ZERO);
  if (c.datatype === "u128") {
    ra.zext(c.name[0], c.name[0]);
  }

  const [src, constant] = allocation.in;
  return [
    ...ra.pres,
    `bzhi ${allocation.oReg[0]}, ${src}, ${constant}; ${c.name[0]} <- ${c.arguments[0]} (only least ${bits} bits)`,
  ];
}

function or(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  // will clear OF/CF, ZF according to result
  // `or` can do reg/mem = reg/mem or imm (iff imm <= MAX_32) as well as reg = reg or r/m
  // as in this case, arg_1 is imm64. we cannot use `or xx, imm`
  //TODO: so disallow imm for the moment

  const allocs = ra.getCurrentAllocations();

  const u1 = c.arguments.every((arg) => arg in allocs && allocs[arg].datatype === "u1");

  const allocation = ra.allocate({
    oReg: c.name,
    in: c.arguments as string[],
    allocationFlags:
      AllocationFlags.SAME_SIZE_READ |
      AllocationFlags.SAVE_FLAG_OF |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.IN_0_AS_OUT_REGISTER |
      AllocationFlags.DISALLOW_XMM |
      AllocationFlags.DISALLOW_IMM,
  });
  ra.declareFlagState(Flags.CF, FlagState.ZERO);
  ra.declareFlagState(Flags.OF, FlagState.ZERO);

  // since IN_0 is in out we can skip the first one
  const [, ...remainingArgs] = allocation.in;

  const oreg64 = allocation.oReg[0];
  const oreg8 = getByteRegFromQwReg(oreg64);
  if (u1) {
    // because u1 | u1 => u1
    ra.declareDatatypeForVar(c.name[0] as CryptOpt.Varname, "u1");
  }
  return [
    ...ra.pres,
    ...remainingArgs.map(
      (inReg, i) =>
        `or ${u1 ? oreg8 : oreg64}, ${inReg}; ${c.name[0]} <- ${c.arguments[0]}|${c.arguments[i + 1]}`,
    ),
  ];
}

function xor(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  // will clear OF/CF, ZF according to result
  // `xor` can do reg/mem = reg/mem or imm (iff imm <= MAX_32) as well as reg = reg xor r/m
  // as in this case, arg_1 is imm64. we cannot use `xor xx, imm`
  //TODO: so disallow imm for the moment

  const allocs = ra.getCurrentAllocations();
  const u1 = c.arguments.every((arg) => arg in allocs && allocs[arg].datatype === "u1");

  const allocation = ra.allocate({
    oReg: c.name,
    in: c.arguments as string[],
    allocationFlags:
      AllocationFlags.SAME_SIZE_READ |
      AllocationFlags.SAVE_FLAG_OF |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.IN_0_AS_OUT_REGISTER |
      AllocationFlags.DISALLOW_XMM |
      AllocationFlags.DISALLOW_IMM,
  });
  ra.declareFlagState(Flags.CF, FlagState.ZERO);
  ra.declareFlagState(Flags.OF, FlagState.ZERO);
  const oreg64 = allocation.oReg[0];
  const oreg8 = getByteRegFromQwReg(oreg64);
  if (u1) {
    // because u1 ^ u1 => u1
    ra.declareDatatypeForVar(c.name[0] as CryptOpt.Varname, "u1");
  }

  // since IN_0 is in out we can skip the first one
  const [, ...remainingArgs] = allocation.in;
  return [
    ...ra.pres,
    ...remainingArgs.map(
      (inReg, i) =>
        `xor ${u1 ? oreg8 : oreg64}, ${inReg}; ${c.name[0]} <- ${c.arguments[0]}|${c.arguments[i + 1]}`,
    ),
  ];
}
