import { isImm, toImm } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt, imm, U1Allocation, U64Allocation, ValueAllocation } from "@/types";

import { f__rfm_rm_rmi, fr__frm_rmi, fr__rfm_rm_rmi } from "./subtractionhelpers/subtraction_helpers";

export function sub(c: CryptOpt.StringInstruction): asm[] {
  if (c.datatype !== "u64") {
    throw new Error(" op + is only supported, if datatype is u64. Abort.");
  }
  // static void fiat_p384_subborrowx_u64(uint64_t* out1, fiat_p384_uint1* out2, fiat_p384_uint1 arg1, uint64_t arg2, uint64_t arg3) {
  //   x1 = ((arg2 - (fiat_p384_int128)arg1) - arg3);
  //   *out1 = (uint64_t)(x1 & UINT64_C(0xffffffffffffffff));
  //   *out2 = (fiat_p384_uint1)(0x0 - (fiat_p384_int1)(x1 >> 64));
  //   sub arg2, arg1
  //   sbb arg2, arg3
  // }
  // u64l = ((arg2 - (fiat_p256_int128)arg1) - arg3);
  // carryu1 = -CF
  // uint64_t u64lo = (uint64_t)(x1 & UINT64_C(0xffffffffffffffff));
  // minuend − subtrahend = difference Example: in 8 − 3 = 5, 8 is the minuend.
  //

  // Step 1 Find out, what to do and get allcoations: highlevel
  if (c.operation !== "subborrowx") {
    throw new Error(`operation must be subborrowx, instead it is : ${c.operation}`);
  }
  if (c.name.length != 2) {
    throw new Error(`Subborrowx needs two name-symbols. It has not. Abort.`);
  }

  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const allocations = ra.getCurrentAllocations();
  // sort the var names
  const [resVarname, carryoutVarname] = c.name;
  const [carryinVarname, minuendVarname, subtrahend] = c.arguments as string[];

  let a_subtrahend: imm | ValueAllocation | null;
  if (isImm(subtrahend)) {
    // make all numbers at least imm32 if we use subtraction with the subtrahend being immediate
    const countNibblesFor32bit = 8;
    const num =
      subtrahend.length <= countNibblesFor32bit + 2
        ? subtrahend
            .split("0x")[1]
            .padStart(countNibblesFor32bit, "0")
            .padStart(countNibblesFor32bit + 2, "0x")
        : subtrahend;
    a_subtrahend = toImm(num);
  } else {
    a_subtrahend = allocations[subtrahend] as U64Allocation | U1Allocation;
  }
  // get the allocations
  const a_minuend = allocations[minuendVarname] as U64Allocation | U1Allocation;

  if (carryinVarname === "0x0") {
    return fr__frm_rmi(carryoutVarname, resVarname, a_minuend, a_subtrahend);
  } else {
    const a_cin = allocations[carryinVarname] as U1Allocation;
    if (carryoutVarname === "_") {
      return f__rfm_rm_rmi(carryoutVarname, a_cin, a_minuend, a_subtrahend);
    } else {
      return fr__rfm_rm_rmi(carryoutVarname, resVarname, a_cin, a_minuend, a_subtrahend);
    }
  }
}
