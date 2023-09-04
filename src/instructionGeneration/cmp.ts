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

import { AllocationFlags, Flags, FlagState } from "@/enums";
import { isByteRegister, isImm, llvm2CC } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function cmp(c: CryptOpt.StringOperation): asm[] {
  if (c.name.length !== 1 || c.arguments.length !== 3) {
    throw new Error(`${c.operation} with more than one name or not 3 args is not supported.`);
  }
  const [condition, readVar, compareVar] = c.arguments;

  if (!(condition in llvm2CC)) {
    throw new Error(`currently only supporing ${Object.keys(llvm2CC).join(" - ")}`);
  }

  if (c.datatype !== "i1") {
    throw new Error("currently only supporing u1");
  }

  // default needed in cmp
  let allocationFlags: AllocationFlags =
    AllocationFlags.DISALLOW_ALL_MEM |
    AllocationFlags.DISALLOW_XMM |
    AllocationFlags.SAME_SIZE_READ |
    AllocationFlags.SAVE_FLAG_CF |
    AllocationFlags.SAVE_FLAG_OF;

  // we can use the imm, if it is <maxsigedInt
  if (isImm(compareVar) && BigInt(compareVar.replaceAll("-", "")) > BigInt("0x7fffffff")) {
    allocationFlags |= AllocationFlags.DISALLOW_IMM;
  }

  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);

  const [in0, in1] = ra.allocate({
    oReg: [],
    in: [readVar, compareVar],
    allocationFlags,
  }).in;

  if (isByteRegister(in1) && !isByteRegister(in0)) {
    throw new Error("cannot compare byte w qword or so.");
  }
  const pres = ra.pres; // include stuff like mov BIG to in1, or save CF's
  const compare = `cmp ${in0}, ${in1}`;
  const set = llvm2CC[condition as unknown as keyof typeof llvm2CC];
  if (set == "setb") {
    ra.declareFlagState(Flags.OF, FlagState.KILLED);
    ra.declareVarForFlag(Flags.CF, c.name[0]);
  } else {
    ra.setCC(set, c.name[0]);
  }
  const afterPres = ra.pres; //now contains the setcc instruction, allocations, spills....

  return [...pres, compare, ...afterPres];
}
