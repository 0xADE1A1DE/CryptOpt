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

import { Flags, FlagState } from "@/enums";
import { getByteRegFromQwReg, isByteRegister, isImm, isMem, isSafeImm32 } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function sub(c: CryptOpt.StringOperation): asm[] {
  if (c.datatype !== "u64") {
    throw new Error(" op - is only supported, if datatype is u64. Abort.");
  }

  if (c.operation === "-") {
    if (c.name.length != 1) {
      throw new Error(`- needs one name-symbol. It has not. Abort.`);
    }
    if (c.arguments.length != 2) {
      throw new Error(`- needs two arguments-symbol. It has not. Abort.`);
    }
  }

  if (c.operation === "subborrowx") {
    if (c.name.length != 2) {
      throw new Error(`Subborrowx needs two name-symbols. It has not. Abort.`);
    }
    if (c.arguments.length != 3) {
      throw new Error(`- needs three arguments-symbol. It has not. Abort.`);
    }
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

  const [resVarname, carryoutVarname] = c.operation == "subborrowx" ? c.name : [c.name[0], "_"];
  const [carryinVarname, minuendVarname, subtrahend] =
    c.operation == "subborrowx" ? c.arguments : (["0x0", ...c.arguments] as string[]);

  const ra = RegisterAllocator.getInstance();
  ra.spillFlag(Flags.OF); // because they will be destroyed after in any case.
  ra.spillFlag(Flags.CF);

  let instr: "sub" | "sbb";
  if (carryinVarname === "0x0") {
    instr = "sub";
  } else {
    // we do have a carry in
    instr = "sbb";

    // if cin is not in CF, mov to CF

    const allocations = ra.getCurrentAllocations();
    let cin = allocations[carryinVarname]?.store;

    if (cin == Flags.OF) {
      cin = ra.loadVarToReg(carryinVarname);
      allocations[carryinVarname].store = cin;
    }

    if (cin !== Flags.CF) {
      ra.spillFlag(Flags.CF); // if there was one before, should be saved

      // load cin to CF
      const r = ra.loadImmToReg64("-0x1");

      if (isMem(cin)) {
        ra.addToPreInstructions(`add ${getByteRegFromQwReg(r)}, byte ${cin}; load to CF<-${carryinVarname}`);
      } else if (isByteRegister(cin)) {
        ra.addToPreInstructions(`add ${getByteRegFromQwReg(r)}, ${cin}; load to CF<-${carryinVarname}`);
      } else {
        ra.addToPreInstructions(`add ${r}, ${cin}; load to CF<-${carryinVarname}`);
      }
      ra.declareHavoc(r);
    }
  }

  // MINUEND MUST BE IN REGISTER
  if (isImm(minuendVarname)) {
    ra.loadImmToReg64(minuendVarname);
  } else {
    ra.loadVarToReg(minuendVarname, "movzx");
  }

  const allocations = ra.getCurrentAllocations();
  let sub = allocations[subtrahend]?.store;
  if (!sub) {
    // subtrahend could be imm
    if (isImm(subtrahend)) {
      if (!isSafeImm32(subtrahend)) {
        sub = ra.loadImmToReg64(subtrahend);
      } else {
        sub = subtrahend; // safe imm
      }
    }
  }

  if (typeof carryoutVarname !== "undefined" && carryoutVarname !== "_") {
    ra.declareVarForFlag(Flags.CF, carryoutVarname);
  } else {
    ra.declareFlagState(Flags.CF, FlagState.KILLED);
  }
  const min = ra.backupIfVarHasDependencies(minuendVarname, resVarname);

  return [`${instr} ${min}, ${sub}`];
}
