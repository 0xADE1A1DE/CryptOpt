/**
 * Copyright 2022 University of Adelaide
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

import { delimbify, isFlag, isImm, isU1, isXmmRegister, limbify, TEMP_VARNAME } from "@/helper";
import { Model } from "@/model";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type {
  asm,
  CryptOpt,
  U1Allocation,
  U1FlagAllocation,
  U1MemoryAllocation,
  U1RegisterAllocation,
  U64Allocation,
  ValueAllocation,
} from "@/types";

import { fr__rm_rm, fr__rm_rm_rmf, fr_rm_f_f, r__rm_f_f,r__rm_rm_rmf, r__rmf_rmf } from "./additionhelpers";

export function add(c: CryptOpt.StringOperation): asm[] {
  // Step 1 Find out, what to do and get allocations: highlevel
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  if (c.datatype == "u64") {
    return add64(c);
  } else if (c.datatype == "u128") {
    return add128(c);
  } else {
    throw new Error("unsupported datatype");
  }
}

function add128(c: CryptOpt.StringOperation): asm[] {
  // for now, add all to the first 1
  const [collector, ...tail] = c.arguments;
  const [olo, ohi] = limbify(c.name);
  if (!ohi) {
    throw new Error("TSNH. ohi shall be defined.");
  }
  const ra = RegisterAllocator.getInstance();

  function zeroIfNotAllocced<T extends CryptOpt.ArgumentWithStringArguments["arguments"][number]>([lo, hi]: [
    T,
    T?,
  ]): [T, T | CryptOpt.HexConstant] {
    if (!hi) {
      throw Error("unexpected call from zeroIfNotAllocced");
    }
    const allocs = ra.getCurrentAllocations();
    const d_lo = delimbify(lo) as T;
    if (allocs[d_lo] && allocs[lo] && allocs[hi]) {
      // if hi+lo and delimbified is alloced
      return [lo, hi];
    }
    if (allocs[d_lo]?.datatype == "u128" && allocs[lo]) {
      // u128 is alloced and lo, but not hi (otherwise we woulnt be here)
      // this is if we add u128 to a u128 (which has been zext'ed)(lo is alloced but hi is not)
      return [lo, "0x0"];
    }
    // now it SHOULD not be a u128 anymore.
    if (allocs[d_lo]?.datatype == "u128") {
      console.warn(ra.getCurrentAllocations());
      throw new Error(`${d_lo} is alloced as u128 but neither lo+hi nor lo is. TSNH.`);
    }
    // now it CANNOT be a u128 anymore, thus return a u64
    return [d_lo, "0x0"];
  }
  const [alo, ahi] = zeroIfNotAllocced(limbify(collector));

  Model.hardDependencies.add(alo);
  const all = tail.reduce((acc, summand) => {
    const [blo, bhi] = zeroIfNotAllocced(limbify(summand));

    if (ahi == "0x0" && bhi == "0x0") {
      // u128 = u64+u64
      const cLo: CryptOpt.StringOperation = {
        name: [olo, ohi],
        arguments: ["0x0", alo, blo],
        operation: "addcarryx",
        datatype: "u64",
        decisions: c.decisions,
        decisionsHot: c.decisionsHot,
      };
      Paul.currentInstruction = cLo;

      const asmlo = add64(cLo);
      asmlo.unshift(...RegisterAllocator.getInstance().pres);
      //and now, since the desination is a u128, we want to set the carry to a u64
      ra.loadVarToReg(ohi, "movzx");
      asmlo.push(...RegisterAllocator.getInstance().pres);
      asmlo.push(";;;done with asmlo, there is no asmhi");
      acc.push(...asmlo);

      return acc;
    }
    // otherwise, (i.e. there is at least one hi limb)
    // we need at least two addition ops:
    // the first one, is cLo, saving the intermediate hi-limb in TEMP_VARNAME

    const cLo: CryptOpt.StringOperation = {
      name: [olo, TEMP_VARNAME],
      arguments: ["0x0", alo, blo],
      operation: "addcarryx",
      datatype: "u64",
      decisions: c.decisions,
      decisionsHot: c.decisionsHot,
    };
    Paul.currentInstruction = cLo;

    const asmlo = add64(cLo);
    asmlo.unshift(...RegisterAllocator.getInstance().pres);
    asmlo.push(";;;done with asmlo");

    acc.push(...asmlo);

    // if there is two hi-limbs
    if (ahi !== "0x0" && bhi !== "0x0") {
      const cHi: CryptOpt.StringOperation = {
        name: [ohi, "_"],
        arguments: [TEMP_VARNAME, ahi, bhi],
        operation: "addcarryx",
        datatype: "u64",
        decisions: c.decisions,
        decisionsHot: c.decisionsHot,
      };
      Paul.currentInstruction = cHi;
      const asmhi = add64(cHi);
      asmhi.unshift(...RegisterAllocator.getInstance().pres);
      asmhi.push(";;;done with asmhi-1");
      acc.push(...asmhi);
      return acc;
    }
    // there is only one hi-limb
    const hi = [ahi, bhi].find((h) => h !== "0x0");
    if (!hi) {
      throw new Error("Corrupt flow. Either A or B should be 0x0 at this point.");
    }

    const cHi: CryptOpt.StringOperation = {
      name: [ohi],
      arguments: [TEMP_VARNAME, hi],
      operation: "+",
      datatype: "u64",
      decisions: c.decisions,
      decisionsHot: c.decisionsHot,
    };
    Paul.currentInstruction = cHi;
    const asmhi = add64(cHi);
    asmhi.unshift(...RegisterAllocator.getInstance().pres);
    asmhi.push(";done with asmhi-2");
    acc.push(...asmhi);

    return acc;
  }, [] as string[]);

  Model.hardDependencies.clear();
  ra.declare128(c.name[0]);
  return all;
}
function add64(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  // ra.addToClobbers(c);

  // c.arguments.forEach((a) => {
  //   // also if one imm is used multiple times to add/subtract from/to, paul should probably decide something here.
  //   if (isImm(a)) {
  //     ra.addToPreInstructions(
  //       "; loadToImm because easier to then check allocs; if imm is <imm32, this can be optimized",
  //     );
  //     ra.loadImmToReg64(a);
  //   } else if (matchArg(a)) {
  //     ra.addToPreInstructions(
  //       "; load ARG to reg because easier to then check allocs; if other arg is in reg, or imm64(which also needs to be loaded to reg), this can be optimized",
  //     );
  //
  //     ra.loadVarToReg(a);
  //   }
  // });

  const allocations = ra.getCurrentAllocations();
  ra.addToClobbers(c);

  let a_arg1 = allocations[c.arguments[1]] as ValueAllocation;
  if (!a_arg1) {
    throw new Error(`cannot find arg1 ${c.arguments[1]} in allocations.`);
  }
  if (c.operation === "addcarryx") {
    // a_arg2 may be undefined, if c.arguments[2] is an immediate which is currently in no reg
    let a_arg2 = allocations[c.arguments[2]] as ValueAllocation | undefined;
    if (typeof a_arg2 === "undefined") {
      if (isImm(c.arguments[2])) {
        const reg = ra.loadImmToReg64(c.arguments[2]);
        a_arg2 = {
          datatype: "u64",
          store: reg,
        };
      } else {
        console.debug(c, allocations);
        throw new Error("undefined behavior. What can possibly be in c.arguments[2] then?");
      }
    }

    // we need to get all xmm's into GP-regs, as we are interested in the COUT-Flag and we cant observe the cout with vector instructions
    if (c.name[1]) {
      if (isXmmRegister(a_arg1.store)) {
        a_arg1 = RegisterAllocator.xmm2reg(a_arg1);
      }
      if (isXmmRegister(a_arg2.store)) {
        a_arg2 = RegisterAllocator.xmm2reg(a_arg2);
      }
    }

    if (isU1(a_arg1) && isU1(a_arg2)) {
      throw new Error("TSNH add() being called with too many u1's.");
    }
    if (isU1(a_arg1) && !isU1(a_arg2)) {
      // then swap
      const tmp = a_arg1;
      a_arg1 = a_arg2 as U64Allocation;
      a_arg2 = tmp as U1Allocation;
    } else {
      // both are u64 arg1 is u64 and arg2 is u1 just 'cast '
      a_arg1 = a_arg1 as U64Allocation;
      a_arg2 = a_arg2 as U1Allocation | U64Allocation;
    }
    // frome here, a_arg1 is u64 in any case.

    if (c.arguments[0] === "0x0") {
      // two operands, with cout
      if (typeof c.name[1] === "undefined") {
        throw new Error("addcarryx was called with an cin of 0x0 and has no cout. Makes no sense. Abort.");
      }
      if (isU1(a_arg2)) {
        throw new Error(
          "thats weired. looking for u1 + u64/u1 but not using it as carry in... TSNH. Reorder those args and/or call different method",
        );
      }

      return [";fr__rm_rm", ...fr__rm_rm(c.name[1] /* COUT */, c.name[0], a_arg1, a_arg2)];
    }

    let a_cin = allocations[c.arguments[0]] as U1Allocation;

    const both_u1_are_flags = isFlag(a_cin.store) && isFlag(a_arg2.store);

    if (!isFlag(a_cin.store) && isFlag(a_arg2.store)) {
      // if the cin has been spilled, but a_arg2 is a flag, then swap
      a_arg2 = allocations[c.arguments[0]] as U1RegisterAllocation | U1MemoryAllocation;
      a_cin = allocations[c.arguments[1]] as U1FlagAllocation;
    }
    if (c.name[1] === "_") {
      // Three operands, no cout
      if (both_u1_are_flags) {
        return [";r__rm_f_f", ...r__rm_f_f(c.name[0], a_arg1)];
      }
      return [";r__rm_rm_f", ...r__rm_rm_rmf(c.name[0], a_arg1, a_arg2, a_cin /* CarryIN */)];
    } else {
      // Three operands, with cout
      if (typeof c.name[1] !== "string") {
        throw new Error(
          "add carryx was called with an cin of 0x0 and has no cout. Makes no sense. Abort. Oh and TSNH",
        );
      }
      if (both_u1_are_flags) {
        return ["; fr_rm_f_f", ...fr_rm_f_f(c.name[1] /* COUT */, c.name[0], a_arg1)];
      }

      return [
        `; fr__rm_rm_rmf ${c.name[1]} /* COUT */, ${c.name[0]}, ${a_arg1.store}, ${a_arg2.store}, ${a_cin.store}(${a_cin.datatype}) /* CarryIN */`,
        ...fr__rm_rm_rmf(c.name[1] /* COUT */, c.name[0], a_arg1, a_arg2, a_cin /* CarryIN */),
      ];
    }
  } else {
    const a_arg0 = allocations[c.arguments[0]] as ValueAllocation;
    // two operands, no cout
    //
    return [`; r__rm_rm_rmf`, ...r__rmf_rmf(c.name[0], a_arg0, a_arg1)];
  }
}
