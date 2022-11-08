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
import { ADX, isByteRegister, isU1, zx } from "@/helper";
import { Model } from "@/model";
import { RegisterAllocator } from "@/registerAllocator";
import type {
  asm,
  MemoryAllocation,
  RegisterAllocation,
  U1FlagAllocation,
  U1RegisterAllocation,
  U64RegisterAllocation,
} from "@/types";

const getRa = () => RegisterAllocator.getInstance();

export function r__r_r(out: string, r0: RegisterAllocation, r1: RegisterAllocation): asm[] {
  const r0u1 = isU1(r0);
  const r1u1 = isU1(r1);
  if (r0u1 && r1u1) {
    return r__r1_r1(out, r0 as U1RegisterAllocation, r1 as U1RegisterAllocation);
  }
  if (r0u1 && !r1u1) {
    return r__r1_r64(out, r0 as U1RegisterAllocation, r1 as U64RegisterAllocation);
  }
  if (!r0u1 && r1u1) {
    return r__r1_r64(out, r1 as U1RegisterAllocation, r0 as U64RegisterAllocation);
  }
  if (!r0u1 && !r1u1) {
    return r__r64_r64(out, r0 as U64RegisterAllocation, r1 as U64RegisterAllocation);
  }
  throw new Error("TSNH. Must be either of r1+r1, r1+r64, r64+r1, r64+r64.");
}

// reg = reg(u1) + reg (u1)
//-if no flags  are alive: add r8/1, r8/2; movzx r64/1, r8/1;                            clears both.
//-else :                 movzx r64/1, r8/1; movzx r64/2, r8/2; lea r64/2,[r64/1+r64/2]
function r__r1_r1(out: string, r0: U1RegisterAllocation, r1: U1RegisterAllocation): asm[] {
  const ra = getRa();
  const fs = ra.flagState();
  //TODO: What about r1?
  //TODO: check backup method to value byte regs as well

  const r0store = ra.backupIfStoreHasDependencies(r0, out);

  if (fs.CF !== FlagState.ALIVE && fs.OF !== FlagState.ALIVE) {
    ra.declareFlagState(Flags.CF, FlagState.ZERO); // cause 1+1 cannot overflow 64bit
    ra.declareFlagState(Flags.OF, FlagState.ZERO);
    if (isByteRegister(r0store)) {
      // if both are byte regs,
      return [`add ${r0store}, ${r1.store}`, zx(r0store).inst]; // add byte regs, then zx
    }
    // else add QWs
    const { inst, reg } = zx(r1.store);
    return [inst, `add ${r0store}, ${reg}`];
  } else {
    const { inst, reg } = zx(r1.store);
    return [inst, `lea ${r0store}, [ ${r0store} + ${reg} ]`];
  }
}

// reg = reg(64) + reg (u1)
//-movzx r64/1, r8/1; then r64+r64
function r__r1_r64(out: string, r0: U1RegisterAllocation, r1: U64RegisterAllocation): asm[] {
  const ra = getRa();

  //TODO: What about r1?
  let r0store = ra.backupIfStoreHasDependencies(r0, out);
  const res: asm[] = [];
  if (isByteRegister(r0store)) {
    const { inst, reg } = zx(r0store);
    res.push(inst);
    r0store = reg;
  }
  return res.concat(`lea ${r0store}, [ ${r0store} + ${r1.store} ]`);
}

// reg = reg(64) + reg (64)
//-lea r64/2, [r64/1+r64/2]
function r__r64_r64(out: string, r0: U64RegisterAllocation, r1: U64RegisterAllocation): asm[] {
  const ra = getRa();
  //TODO: What about r1?
  const r0store = ra.backupIfStoreHasDependencies(r0, out);
  return [`lea ${r0store}, [ ${r0store} + ${r1.store} ]`];
}
export function r__r_m(out: string, r0: RegisterAllocation, m1: MemoryAllocation): asm[] {
  return r__rm_m(out, r0, m1);
}

//-if no flags are alive :
// r1  + m1 : add r8/1, m/8; movzx r64/1, r8/1;                             clears both.
// r64 + m1 : rcr byte m/8, 1; (if m/8 has deps setc m/8); adc r64,0x0;
// r1  +m64 : movzx r64, r/8; add r64, m64
// r64 +m64 : add r64, m/64;
//-else
// r1  + m1 : r64/1, m8/1; movzx r64/2, r8/2; lea r64/2,[r64/1+r64/2]
// r64 + m1 : movzx r64/2, m/8; lea r64/1, [r64/1 + r64/2]
// r1  +m64 : movzx r64, r/8; then r64 + m64
// r64 + m64:
// -if one is zero       : adx r64/2, m/64;
// -if both are alive    : movzx r64, m/64; lea r64/1, [r64/1 + r64/2]

function r__rm_m(out: string, r0: RegisterAllocation | MemoryAllocation, m1: MemoryAllocation): asm[] {
  const ra = getRa();
  const fs = ra.flagState();
  //TODO: What about r1?
  //TODO: check backup method to value byte regs as well

  const r0store = ra.backupIfStoreHasDependencies(r0, out);

  if (fs.CF !== FlagState.ALIVE && fs.OF !== FlagState.ALIVE) {
    //r8 + m8
    if (isByteRegister(r0store) && isU1(m1)) {
      ra.declareFlagState(Flags.CF, FlagState.ZERO); // cause 1+1 cannot overflow 64bit
      ra.declareFlagState(Flags.OF, FlagState.ZERO);
      let comment = "";
      if (isU1(r0)) {
        //Then probably the reg from zx must be updated in allocations.
        comment = "probably change isByteRegister to isU1, in order to actually add bytes.";
      }
      return [`add ${r0store}, ${m1.store};${comment} add first and then zx`, zx(r0store).inst];
    }
    // in any other case, the flags will be killed
    ra.declareFlagState(Flags.CF, FlagState.KILLED);
    ra.declareFlagState(Flags.OF, FlagState.KILLED);
    //r64 + m8
    if (!isByteRegister(r0store) && isU1(m1)) {
      const res = [`rcr byte ${m1.store}, 1`];
      if (Model.hasDependants(ra.getVarnameFromStore(m1))) {
        res.push(`setc ${m1.store}; keep flag in mem cause it has deps.`);
      }
      return res.concat(`adc ${r0store}, 0x0`);
    }

    //r8 + m64
    if (isByteRegister(r0store) && !isU1(m1)) {
      const { inst, reg } = zx(r0store);
      return [inst, `add ${reg}, ${m1.store}`];
    }
    //r64 + m64
    if (!isByteRegister(r0store) && !isU1(m1)) {
      return [`add ${r0store}, ${m1.store}`];
    }
    // else add QWs, mostly without touching flags
  } else {
    //r8 + m8
    if (isByteRegister(r0store) && isU1(m1)) {
      // r1  + m1 : r64/1, m8/1; movzx r64/2, r8/2; lea r64/2, [r64/1+r64/2]
      const { inst, reg: r64_1 } = zx(r0store);
      const r64_2 = ra.loadVarToReg(ra.getVarnameFromStore(m1), "movzx");
      return [inst, `lea ${r64_1}, [ ${r64_1} + ${r64_2} ]; r8+m8`];
    }
    //r64 + m8
    if (!isByteRegister(r0store) && isU1(m1)) {
      // r64 + m1 :              movzx r64/2, m/8 ; lea r64/1, [r64/1+r64/2]
      const r64_2 = ra.loadVarToReg(ra.getVarnameFromStore(m1), "movzx");
      return [`lea ${r0store}, [ ${r0store} + ${r64_2} ]; r64+m8`];
    }

    //r8 + m64
    if (!isU1(m1)) {
      // r1  +m64 :              movzx r64, r/8   ; then r64 + m64
      let r64_1 = r0store;
      const res = [] as asm[];
      if (isByteRegister(r0store)) {
        const { inst, reg } = zx(r0store);
        res.push(inst);
        r64_1 = reg;
      }
      // r64 + m64:
      const fs = ra.flagState();
      if (fs.CF === FlagState.ZERO || fs.OF === FlagState.ZERO) {
        // -if one is zero       : adx r64/2, m/64;
        const flag = fs.CF === FlagState.ZERO ? Flags.CF : Flags.OF;
        ra.declareFlagState(flag, FlagState.KILLED);
        return res.concat(`${ADX[flag]} ${r64_1}, ${m1.store}`);
      }
      // -if both are alive    : movzx r64, m/64; lea r64/1, [r64/1 + r64/2]
      // !Important Note: using movzx here,
      // will cause to only load a byte from m1, which is clearly not a u1
      const r64_2 = ra.loadVarToReg(ra.getVarnameFromStore(m1));
      return res.concat(`lea ${r64_1}, [ ${r64_1} + ${r64_2} ]; r8/64 + m8`);
    }
  }
  throw new Error("TSNH Must be one of r8+m8, r64 + m64, m64+(r8 or not r8)");
}

function r__rm_f(out: string, r0: RegisterAllocation | MemoryAllocation, f1: U1FlagAllocation): asm[] {
  const ra = getRa();
  const fs = ra.flagState();
  let r0store = ra.backupIfStoreHasDependencies(r0, out);
  if (f1.store === Flags.CF) {
    ra.spillFlag(Flags.CF); // because It may have other dependencies
    ra.declareFlagState(Flags.CF, isByteRegister(r0store) ? FlagState.ZERO : FlagState.KILLED);
    // reg = CF + reg (u1)
    // reg = CF + reg (u64)
    //--OFkz: adc r0, 0x0                //                 clears OF, if reg was u1, kills it otherwise
    //---OFa: mov r64, 0x0; adcx r0, r64 // keeps OF alive, clears CF, if reg was u1, kills it otherwise
    //
    if (fs.OF !== FlagState.ALIVE) {
      ra.declareFlagState(Flags.OF, isByteRegister(r0store) ? FlagState.ZERO : FlagState.KILLED);
      return [`adc ${r0store}, 0x0; add CF to r0's alloc`];
    } else {
      const reg = ra.loadImmToReg64("0x0");
      return [`adcx ${r0store}, ${reg}`];
    }
  } else {
    // OverflowFlag
    // reg = OF + reg (u1)               //clears OF
    //-movzx r64/1, r8
    // reg = OF + reg (u64)              //kill OF
    //-mov r64/2, 0x0, adox r64/1, r64/2
    ra.spillFlag(Flags.OF); // because It may have other dependencies
    const res = [] as asm[];
    if (isByteRegister(r0store)) {
      ra.declareFlagState(Flags.OF, FlagState.ZERO);
      const { inst, reg } = zx(r0store);
      r0store = reg;
      res.push(inst);
    } else {
      ra.declareFlagState(Flags.OF, FlagState.KILLED);
    }
    const readReg = ra.loadImmToReg64("0x0");
    return res.concat(`adox ${r0store}, ${readReg}`);
  }
}
export function r__r_f(out: string, r0: RegisterAllocation, f1: U1FlagAllocation): asm[] {
  return r__rm_f(out, r0, f1);
}

export function r__m_m(out: string, m0: MemoryAllocation, m1: MemoryAllocation): asm[] {
  // reg = mem(u1) + mem (u1)
  //-movzx r64/1, m8/1, then see // reg = reg(64) + mem (u1)
  // reg = mem(64) + mem (u1)
  //-movzx r64/2, m8/1, then see // reg = reg(64) + mem (m64)
  // reg = mem(64) + mem (64)
  //-mov r/64, m/64;    then see // reg = reg(64) + mem (m64)

  // the mov of mem to reg will be done by the backupIfStoreHasDependencies instruction in rm_m implilcitly
  return r__rm_m(out, m0, m1);
}

export function r__m_f(out: string, m0: MemoryAllocation, f1: U1FlagAllocation): asm[] {
  // CarryFlag
  // reg = CF + mem (u1)                    clears CF/OF
  // reg = CF + mem (u64)                   kill CF/OF
  //--OFkz: movzx r64, m1, adc r64,0x0
  //---OFa: mov r64, 0x0; adcx r64, m1
  //---------------
  // reg = OF + mem (u1)                    clears CF/OF
  //-movzx r64/1, [r8]
  // reg = OF + mem (u64)                   kill CF/OF
  //-mov r64/2, 0x0, adox r64/1, r64/2
  //---------------

  // cause sorta the same as for r__r_f
  return r__rm_f(out, m0, f1);
}

// reg = CF + OF
// allocate a reg(u64 for now, could be put to u8/u2 later); clears CF/OF
// depending on if/which  flag has dependencies
// spill one and adX the other
//-seto al, adc al, 0x0, movzx rax, al;
//---------------
export function r__f_f(out: string): asm[] {
  const ra = getRa();
  const cfName = ra.getVarnameFromStore({ store: Flags.CF });
  const ofName = ra.getVarnameFromStore({ store: Flags.OF });
  const cfDep = Model.hasDependants(cfName);
  const ofDep = Model.hasDependants(ofName);

  if (cfDep && ofDep) {
    throw new Error("currently only supported that one flag can have further deps");
  }
  if (cfDep) {
    // cf hasDeps, of doesnt matter
    const breg = ra.spillFlag(Flags.CF, out);
    if (!breg) {
      throw Error("how can breg be false now?");
    }
    const { reg, inst } = zx(breg);
    const zero = ra.loadImmToReg64("0x0");
    ra.declareFlagState(Flags.OF, FlagState.ZERO);
    ra.declareFlagState(Flags.CF, FlagState.KILLED);
    // add OF to this
    return [inst, `adox ${reg}, ${zero}; spilled cf, zxed it, + 0 + of`];
  } else {
    // of has deps, cf has none
    const breg = ra.spillFlag(Flags.OF, out);
    if (breg === false) {
      throw new Error("OF-Flag was not alive. TSNH.");
    }
    ra.declareFlagState(Flags.OF, FlagState.ZERO);
    ra.declareFlagState(Flags.CF, FlagState.ZERO);
    return [`adc ${breg}, 0x0; r<-f+f`, zx(breg).inst];
  }
}
