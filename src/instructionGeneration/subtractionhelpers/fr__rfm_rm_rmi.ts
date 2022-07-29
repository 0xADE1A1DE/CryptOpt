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

import { Flags, FlagState } from "@/enums";
import { isByteRegister } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type {
  asm,
  imm,
  MemoryAllocation,
  RegisterAllocation,
  U1FlagAllocation,
  U1MemoryAllocation,
  U1RegisterAllocation,
  U64Allocation,
} from "@/types";

// checks f==CF then maps to fr__f_rm_i
export function fr__f_rm_rmi(
  cout: string,
  out: string,
  cin: U1FlagAllocation,
  arg0: RegisterAllocation | MemoryAllocation,
  arg1: imm | RegisterAllocation | MemoryAllocation,
): asm[] {
  if (cin.store !== Flags.CF) {
    // could be done with seto then f__r_r_i though
    throw new Error("unsupported to do OF in substraction.");
  }
  return fr__CF_rm_rmi(cout, out, arg0, arg1);
}

// that will load u1 into CF, then call fr__f_rm_i
export function fr__rm_rm_rmi(
  cout: string,
  out: string,
  cin: U1RegisterAllocation | U1MemoryAllocation,
  arg0: RegisterAllocation | MemoryAllocation,
  arg1: imm | RegisterAllocation | MemoryAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  const fs = ra.flagState();
  if (fs.CF === FlagState.ALIVE) {
    ra.spillFlag(Flags.CF);
  }
  if (fs.OF === FlagState.ALIVE) {
    ra.spillFlag(Flags.OF);
  }
  const cinname = ra.getVarnameFromStore(cin);
  const reg = ra.backupIfStoreHasDependencies(cin, cinname);
  ra.declareVarForFlag(Flags.CF, cinname);

  ra.addToPreInstructions(`add ${reg}, -0x1`);
  return fr__CF_rm_rmi(cout, out, arg0, arg1);
}

function fr__CF_rm_rmi(
  cout: string,
  out: string,
  arg0: RegisterAllocation | MemoryAllocation,
  arg1: imm | RegisterAllocation | MemoryAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  const fs = ra.flagState();
  ra.declareVarForFlag(Flags.CF, cout);
  if (fs.OF === FlagState.ALIVE) {
    ra.spillFlag(Flags.OF);
  } else if (fs.OF === FlagState.ZERO) {
    ra.declareFlagState(Flags.OF, FlagState.KILLED);
  }
  const reg = ra.backupIfStoreHasDependencies(arg0, out);
  if (typeof arg1 === "string") {
    if (!arg1.startsWith("0x0")) {
      // since sbb cannot handle imm64 and signextends imm32,
      // we need to move it to a reg before
      arg1 = ra.loadImmToReg64(arg1);
      if (isByteRegister(reg)) {
        throw new Error("Double check, if thats a valid substration from a byte reg.");
      }
    }
  } else {
    arg1 = (arg1 as U64Allocation).store;
  }
  return [`sbb ${reg}, ${arg1}`];
}
// ONE MAY BE using cmp in the future here to load the rm into CF, cause CMP can to imm64
