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

import { Flags, FlagState, Register } from "@/enums";
import { ADX, isByteRegister, isMem, isU1, SETX, zx } from "@/helper";
import { Model } from "@/model";
import { RegisterAllocator } from "@/registerAllocator";
import type {
  asm,
  MemoryAllocation,
  RegisterAllocation,
  U1FlagAllocation,
  U1MemoryAllocation,
  U1RegisterAllocation,
  U64Allocation,
  U64RegisterAllocation,
} from "@/types";

export function r__rm_f_f(out: string, arg0: U64Allocation): asm[] {
  // spill OF to a reg; then adc that to r/m.
  const ra = RegisterAllocator.getInstance();
  const bytereg = ra.spillFlag(Flags.OF);
  if (!bytereg) {
    throw new Error(`tried to spill OF, but didnt work. TSNH.`);
  }
  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  const { inst, reg } = zx(bytereg);
  const r0store = ra.backupIfStoreHasDependencies(arg0, out);

  return [inst, `adc ${r0store}, ${reg}`];
}

export function r__r_r_f(
  out: string,
  r0: U64RegisterAllocation,
  r1: RegisterAllocation,
  cin: U1FlagAllocation,
): asm[] {
  return r__r_rm_f(out, r0, r1, cin);
}
// r64 = r64/1 + r64/2 + rm8/3
//-if no flags alive
//--sar rm8/3, 1 (fill load rm8/3 into CF, CLEARS OF)
//--adcx r64/1, r64/2
//-if any flags are alive
//-- movzx r64/3, r8/3
//-- lea r64/1, [r64/1+r64/2]
//-- lea r64/1, [r64/1+r64/3]
function r__r_r_rm(
  out: string,
  r0: U64RegisterAllocation,
  r1: RegisterAllocation,
  cin: U1RegisterAllocation | U1MemoryAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  const fs = ra.flagState();
  // TOOD: what about r1?
  const r0store = ra.backupIfStoreHasDependencies(r0, out) as Register;
  if (fs.CF !== FlagState.ALIVE && fs.OF !== FlagState.ALIVE) {
    return r__r_rm_rm__noFlagsAlive(out, r0store, r1, cin);
  } else {
    let r64_3: Register = cin.store as Register;
    if (isMem(cin.store)) {
      r64_3 = ra.loadVarToReg(ra.getVarnameFromStore(cin), "movzx") as Register;
    } else if (isByteRegister(cin.store)) {
      const { inst, reg } = zx(cin.store);
      r64_3 = reg;
      ra.addToPreInstructions(inst);
    }
    let r1store = r1.store;
    if (isU1(r1)) {
      const { inst, reg } = zx(r1.store);
      ra.addToPreInstructions(inst);
      r1store = reg;
    }
    return [`lea ${r0store}, [ ${r0store} + ${r1store} ]`, `lea ${r0store}, [ ${r0store} + ${r64_3} ]`];
  }
}
export function r__r_r_r(
  out: string,
  r0: U64RegisterAllocation,
  r1: RegisterAllocation,
  cin: U1RegisterAllocation,
): asm[] {
  return r__r_r_rm(out, r0, r1, cin);
}

// TODO: this could be handled better, iff r1 is u1, we could add
// cin and r1 first ()
function r__r_rm_rm__noFlagsAlive(
  _out: string,
  r0store: Register,
  r1: RegisterAllocation | MemoryAllocation,
  cin: U1RegisterAllocation | U1MemoryAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  // load flag and add
  ra.addToPreInstructions(`sar ${isMem(cin.store) ? "byte" : ""} ${cin.store}, 1`);
  ra.declareFlagState(Flags.OF, FlagState.ZERO);

  if (Model.hasDependants(ra.getVarnameFromStore(cin))) {
    ra.addToPreInstructions(`${SETX[Flags.CF]} ${cin.store}`);
  }
  let r1store = r1.store;
  if (isByteRegister(r1.store)) {
    const { inst, reg } = zx(r1.store);
    ra.addToPreInstructions(inst);
    r1store = reg;
  } else if (isU1(r1) && isMem(r1store)) {
    // this is just to have it work now.
    r1store = ra.moveOneMemoryToRegister([r1], "movzx")[0].store as Register;
  }
  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  return [`adcx ${r0store}, ${r1store}`];
}

export function r__r_r_m(
  out: string,
  r0: U64RegisterAllocation,
  r1: RegisterAllocation,
  cin: U1MemoryAllocation,
): asm[] {
  return r__r_r_rm(out, r0, r1, cin);
}

export function r__r_m_f(
  out: string,
  r0: RegisterAllocation,
  r1: MemoryAllocation,
  cin: U1FlagAllocation,
): asm[] {
  return r__r_rm_f(out, r0, r1, cin);
}
export function r__r_m_r(
  out: string,
  r0: RegisterAllocation,
  m1: MemoryAllocation,
  cin: U1RegisterAllocation,
): asm[] {
  return r__r_m_rm(out, r0, m1, cin);
}

export function r__r_m_m(
  out: string,
  r0: RegisterAllocation,
  m1: MemoryAllocation,
  cin: U1MemoryAllocation,
): asm[] {
  return r__r_m_rm(out, r0, m1, cin);
}

export function r__m_m_f(
  out: string,
  r0: MemoryAllocation,
  r1: MemoryAllocation,
  cin: U1FlagAllocation,
): asm[] {
  const [r, m] = RegisterAllocator.getInstance().moveOneMemoryToRegister([r0, r1]);
  return r__r_m_f(out, r as U64RegisterAllocation, m, cin);
}

export function r__m_m_r(
  out: string,
  r0: MemoryAllocation,
  r1: MemoryAllocation,
  cin: U1RegisterAllocation,
): asm[] {
  const [r, m] = RegisterAllocator.getInstance().moveOneMemoryToRegister([r0, r1]);
  return r__r_m_r(out, r as U64RegisterAllocation, m, cin);
}

export function r__m_m_m(
  out: string,
  r0: MemoryAllocation,
  r1: MemoryAllocation,
  cin: U1MemoryAllocation,
): asm[] {
  const [r, m] = RegisterAllocator.getInstance().moveOneMemoryToRegister([r0, r1]);
  return r__r_m_m(out, r as U64RegisterAllocation, m, cin);
}

function r__r_rm_f(
  out: string,
  r0: RegisterAllocation,
  r1: MemoryAllocation | RegisterAllocation,
  cin: U1FlagAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  let r1store = r1.store;
  if (isU1(r1)) {
    if (isByteRegister(r1store)) {
      const { inst, reg } = zx(r1store);
      r1store = reg;
      ra.addToPreInstructions(inst);
    } else {
      // its mem
      const a_r1zx: RegisterAllocation = ra.moveOneMemoryToRegister([r1], "movzx")[0];
      r1store = a_r1zx.store;
    }
  }
  // similar to fr__r_rm_f
  const r0store = ra.backupIfStoreHasDependencies(r0, out);
  ra.declareFlagState(cin.store, FlagState.KILLED);
  return [`${ADX[cin.store]} ${r0store}, ${r1store}`];
}

// r+m
// r64 = r64/1 + m64 + r8/2
//-- if no flags alive: same as r+r+r
//--if any flag is zero
//
//-movzx r64/2, r8/2
//-lea r64/1, [r64/1 + r64/2]
//
//-adx r64/1, m64
//
//--if both are alive
//-movzx r64/2, r8/2
//-lea r64/1, [r64/1 + r64/2]
//
//-mov r64/2, m64
//-lea r64/1, [r64/1 + r64/2]

//NOTE: one could zero one out, if one is alive and one is killed,
//Probably this is not sensible since it would require to have a number in a reg and another
//instruction.
function r__r_m_rm(
  out: string,
  r0: RegisterAllocation,
  m1: MemoryAllocation,
  cin: U1RegisterAllocation | U1MemoryAllocation,
): asm[] {
  const isByteM1 = isU1(m1);

  const ra = RegisterAllocator.getInstance();
  const fs = ra.flagState();
  // TOOD: what about r1?
  const r0store = ra.backupIfStoreHasDependencies(r0, out) as Register;
  if (fs.CF !== FlagState.ALIVE && fs.OF !== FlagState.ALIVE) {
    return r__r_rm_rm__noFlagsAlive(out, r0store, m1, cin);
  }
  // get u1 from r8/2 and add it to r64/2
  const r2reg = ra.loadVarToReg(ra.getVarnameFromStore(cin), "movzx");
  ra.addToPreInstructions(`lea ${r0store}, [ ${r2reg} + ${r0store} ]`);

  // then add m64 to r64/1 (only iff m is m64)
  if (!isByteM1 && (fs.CF === FlagState.ZERO || fs.OF === FlagState.ZERO)) {
    //either using adx if some is zero,
    const flag = fs.CF === FlagState.ZERO ? Flags.CF : Flags.OF;
    ra.declareFlagState(flag, FlagState.KILLED);
    return [`${ADX[flag]} ${r0store}, ${m1.store}`];
  } else {
    // otherwise use mov and use lea
    return [
      isByteM1 ? `movzx ${r2reg}, byte ${m1.store}` : `mov ${r2reg}, ${m1.store}`,
      `lea ${r0store}, [${r2reg}+${r0store}]`,
    ];
  }
}
