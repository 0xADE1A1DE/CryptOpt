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

import { AllocationFlags, Flags, Register } from "@/enums";
import { isFlag, isXmmRegister, matchArg, SETX, toMem } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt, ValueAllocation } from "@/types";

export function mov(c: CryptOpt.StringOperation): asm[] {
  if (c.name.length !== 1 || c.arguments.length !== 1) {
    throw new Error(`${c.operation}with multiple operands is not supported.`);
  }

  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const m = matchArg(c.name[0])?.groups; // like {base:out1, offset:2} for out1[2]
  if (m) {
    // mov to mem
    const [read] = c.arguments as string[];
    const [outMemAddr] = c.name;

    const allocation = ra.allocate({
      oReg: [],
      in: [read, m.base],
      allocationFlags: AllocationFlags.DISALLOW_MEM,
    });
    let baseReg = allocation.in[1];
    if (isXmmRegister(baseReg)) {
      const baseAlloc = ra.getCurrentAllocations()[m.base];
      baseReg = RegisterAllocator.xmm2reg(baseAlloc as ValueAllocation).store;
    }

    const memOut = toMem(m.offset, baseReg as Register);
    // this construct will put the allocation.in0 data into tmp (allocation.oReg0)
    if (isFlag(allocation.in[0])) {
      const flag = allocation.in[0];
      return [...ra.pres, `mov qword ${memOut}, 0x0`, `${SETX[flag]} ${memOut};`];
    } else {
      // cause mov cannot take m64, m64, we may need to use a tmp register.

      const instr = isXmmRegister(allocation.in[0]) ? "movq" : "mov";
      return [
        ...ra.pres,
        `${instr} ${memOut}, ${allocation.in[0]}; ${outMemAddr} = ${read}`, // and then this will put the data to the destination memory
      ];
    }
  } else {
    // we can use lazy mov (aka rename) if its not an argument
    if (!matchArg(c.arguments[0])) {
      ra.lazyMov(c.arguments[0], c.name[0]);
    } else {
      // and we use the backup function otherwise
      ra.backupIfVarHasDependencies(c.arguments[0], c.name[0]);
    }
    return ra.pres;
  }
}
export function conditionalMovZNZ(c: CryptOpt.StringOperation): asm[] {
  // will clear OF/CF, ZF according to result
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const [swVarname, zeroVarname, nzVarname] = c.arguments as string[];
  const sw = ra.getCurrentAllocations()[swVarname];
  if (isFlag(sw.store)) {
    // if the switch var is a flag, we dont need to spill it+ test + cmovnz. We can do better

    const movInst = sw.store === Flags.CF ? "cmovc" : "cmovo";
    const allocation = ra.allocate({
      oReg: c.name,
      in: [zeroVarname, nzVarname],
      allocationFlags:
        AllocationFlags.DISALLOW_XMM | AllocationFlags.IN_0_AS_OUT_REGISTER | AllocationFlags.DISALLOW_IMM,
    });
    return [
      `; the job is: ${c.name[0]} = ${swVarname} !== 0 ? ${zeroVarname}: ${nzVarname}`,
      ...ra.pres,
      `${movInst} ${allocation.oReg[0]}, ${allocation.in[1]}; if ${sw.store}, ${c.name[0]}<- ${nzVarname} (nzVar)`,
    ];
  }

  const allocation = ra.allocate({
    oReg: c.name,
    in: [zeroVarname, swVarname, nzVarname],
    allocationFlags:
      AllocationFlags.SAVE_FLAG_OF |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.DISALLOW_MEM | // otherwise we'd need to specify the operand size of memory (for test?! dev not sure any more, should be ob to specify that, right?)
      AllocationFlags.DISALLOW_IMM | // cmov doesn't like imm's
      AllocationFlags.DISALLOW_XMM |
      AllocationFlags.IN_0_AS_OUT_REGISTER,
  });
  return [
    `; the job is: ${c.name[0]} = ${swVarname} !== 0 ? ${zeroVarname}: ${nzVarname}`,
    ...ra.pres,
    `test ${allocation.in[1]}, ${allocation.in[1]}; testing ${swVarname}`,
    `cmovnz ${allocation.oReg[0]}, ${allocation.in[2]}; if !ZF, ${c.name[0]}<- ${nzVarname} (nzVar)`,
  ];
}
