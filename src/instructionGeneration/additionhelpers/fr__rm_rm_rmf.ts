import { Flags, FlagState, Register } from "@/enums";
import { ADX, isByteRegister, isFlag, isMem, isU1, SETX, toggleFlag, toImm, zx } from "@/helper";
import { Model } from "@/model";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type {
  asm,
  MemoryAllocation,
  RegisterAllocation,
  U1Allocation,
  U1FlagAllocation,
  U1MemoryAllocation,
  U1RegisterAllocation,
  U64Allocation,
  U64RegisterAllocation,
} from "@/types";

export function fr_rm_f_f(cout: string, out: string, arg0: U64Allocation): asm[] {
  const ra = RegisterAllocator.getInstance();
  // NOTE to the future developer: you probably only want to have one addition operation because of the cout.
  // that means, that we want to set one flag to reg(r64) and then add to that reg the other arg independent of r or m.

  // if both flags have further dependencies other than the current one, we need to spill both of them to reg.
  const nameCF = ra.getVarnameFromStore({ store: Flags.CF });
  const nameOF = ra.getVarnameFromStore({ store: Flags.OF });
  const depsOF = Model.hasDependants(nameOF);
  const depsCF = Model.hasDependants(nameCF);

  let flag: Flags | null = null;
  let otherFlag: Flags | null = null;
  let reg: Register | null = null;
  if (depsCF && depsOF) {
    // if both have deps, choose one randomly
    flag = Paul.chooseFlag(); // and spill the other one
    otherFlag = toggleFlag(flag);
    ra.spillFlag(otherFlag); // dont really care where it ends up, since its technicallly still in the FLAGS register, wehere we will use it from
  }
  // if any has other deps
  if (depsCF && !depsOF) {
    // the one without deps must be 'other flag' since it will be declared cout
    flag = Flags.OF;
  }
  if (!depsCF && depsOF) {
    // the one without deps must be 'other flag' since it will be declared cout
    flag = Flags.CF;
  }
  if (!depsCF && !depsOF) {
    flag = Paul.chooseFlag();
  }

  if (flag === null) {
    throw new Error("one of those must have been true. TSNH.");
  }
  // after that:
  // - flag has been spilled to reg and can be used. (copied if it has other deps)
  // - otherflag has no deps, i.e. can be used and declared to cout

  otherFlag = toggleFlag(flag);
  reg = ra.backupIfVarHasDependencies(flag == Flags.CF ? nameCF : nameOF, out);

  ra.declareVarForFlag(otherFlag, cout);
  ra.declareFlagState(flag, FlagState.KILLED);

  return [
    `${ADX[otherFlag]} ${reg}, ${arg0.store}; ${otherFlag} should have been spilled if it had deps, ${flag} should have been spilled into ${reg} and into another reg, if it has had other deps than this one.`,
  ];
}

export function fr__r_r_f(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  r1: RegisterAllocation,
  cin: U1FlagAllocation,
): asm[] {
  return fr__r_rm_f(cout, out, r0, r1, cin);
}
export function fr__r_r_r(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  r1: RegisterAllocation,
  cin: U1RegisterAllocation,
): asm[] {
  return fr__r_rm_rm(cout, out, r0, r1, cin);
}
export function fr__r_r_m(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  r1: RegisterAllocation,
  cin: U1MemoryAllocation,
): asm[] {
  return fr__r_rm_rm(cout, out, r0, r1, cin);
}

export function fr__r_m_f(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  m1: MemoryAllocation,
  cin: U1FlagAllocation,
): asm[] {
  return fr__r_rm_f(cout, out, r0, m1, cin);
}
export function fr__r_m_r(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  m1: MemoryAllocation,
  cin: U1RegisterAllocation,
): asm[] {
  return fr__r_rm_rm(cout, out, r0, m1, cin);
}
export function fr__r_m_m(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  m1: MemoryAllocation,
  cin: U1MemoryAllocation,
): asm[] {
  return fr__r_rm_rm(cout, out, r0, m1, cin);
}

export function fr__m_m_f(
  cout: string,
  out: string,
  m0: MemoryAllocation,
  m1: MemoryAllocation,
  cin: U1FlagAllocation,
): asm[] {
  const [r, m] = RegisterAllocator.getInstance().moveOneMemoryToRegister([m0, m1]);
  return fr__r_m_f(cout, out, r as U64RegisterAllocation, m, cin);
}
export function fr__m_m_r(
  cout: string,
  out: string,
  m0: MemoryAllocation,
  m1: MemoryAllocation,
  cin: U1RegisterAllocation,
): asm[] {
  RegisterAllocator.getInstance().addToPreInstructions("; fr m m r");
  return fr__m_m_rm(cout, out, m0, m1, cin);
}
export function fr__m_m_m(
  cout: string,
  out: string,
  m0: MemoryAllocation,
  m1: MemoryAllocation,
  cin: U1MemoryAllocation,
): asm[] {
  return fr__m_m_rm(cout, out, m0, m1, cin);
}

export function fr__m_m_rm(
  cout: string,
  out: string,
  m0: MemoryAllocation,
  m1: MemoryAllocation,
  cin: U1Allocation,
): asm[] {
  const [r, m] = RegisterAllocator.getInstance().moveOneMemoryToRegister(
    [m0, m1],
    "movzx", // guaratees, that U64 Reg allog comes out
  );
  return fr__r_rm_rm(cout, out, r as U64RegisterAllocation, m, cin);
}

function fr__r_rm_f(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  r1: RegisterAllocation | MemoryAllocation,
  cin: U1FlagAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.declareVarForFlag(cin.store, cout);

  let r0store = r0.store;
  if (isByteRegister(r0store)) {
    // prob, never going to happen
    const { reg, inst } = zx(r0store);
    ra.addToPreInstructions(inst);
    r0store = reg;
  }

  let r1store = ra.backupIfStoreHasDependencies(r1, out);
  // prob, rarely going to happen
  if (isByteRegister(r1store)) {
    const { reg, inst } = zx(r1store);
    ra.addToPreInstructions(inst);
    r1store = reg;
  }

  return [`${ADX[cin.store]} ${r1store}, ${r0store}`];
}

// F, r64 = r64 + rm64 + rm/8
//-if none is alive, flip a coin:
//// F<-OF?CF
////add rm/8, 0x7F (F === OF) | 0xFF (F===CF); (seto/c rm/8 if deps) adx r64/1, rm64/2; clears other F
//-if both are alive: spill(kill) one randomly, try again
//-CF is alive;
// -- OFk
//-- mov r64/3, 0x0
//-- movzx r64/4, r/m8
//-- dec r64/3 (clears OF); adox r64/3, r64/4 (load F); adox r64/1, rm64/2 (final addition)
// -- OFz
//-- mov r64/3, -1
//-- movzx r64/4, r/m8
//-- adox r64/3, r64/4 (load F); adox r64/1, rm64/2 (final addition)
//
//-OF is alive;
// -- CFk
//-- mov r64/3, -1
//-- movzx r64/4, r/m8
//-- clc; adcx r64/3, r64/4 (load F); adcx r64/1, rm64/2 (final addition)
// -- CFz
//-- mov r64/3, -1
//-- movzx r64/4, r/m8
//-- adcx r64/3, r64/4 (load f); adcx r64/1, rm64/2 (final addition)
//
// to get rm8 to flag:
// CF  OF   case
// k   k    0       coin: add rm8, 0x7F (OF) || add rm8,0xFF (CF); setx if rm8 has deps; (note: other Flag is cleared)
// k   z    0       coin: add rm8, 0x7F (OF) || add rm8,0xFF (CF); setx if rm8 has deps; (note: other Flag is cleared)
// z   k    0       coin: add rm8, 0x7F (OF) || add rm8,0xFF (CF); setx if rm8 has deps; (note: other Flag is cleared)
// z   z    0       coin: add rm8, 0x7F (OF) || add rm8,0xFF (CF); setx if rm8 has deps; (note: other Flag is cleared)
// a   a    1       coin: spillCF || spillOF, continue;
// a   k    2       mov r64/3, 0x0; movzx r64/4, r/m8; dec r64/3 (clears OF); adox r64/3, r64/4 (load F); adox r64/1, rm64/2
// a   z    3       mov r64/3, -1 ; movzx r64/4, r/m8;                        adox r64/3, r64/4 (load F); adox r64/1, rm64/2
// k   a    4       mov r64/3, -1 ; movzx r64/4, r/m8; clc;                   adcx r64/3, r64/4 (load F); adcx r64/1, rm64/2
// z   a    5       mov r64/3, -1 ; movzx r64/4, r/m8;                        adcx r64/3, r64/4 (load F); adcx r64/1, rm64/2
function fr__r_rm_rm(
  cout: string,
  out: string,
  r0: RegisterAllocation,
  r1: RegisterAllocation | MemoryAllocation, //U1Allocs can happen for p256 adx(o1,o64,u1,u1,u64)
  cin: U1RegisterAllocation | U1MemoryAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  let fs = ra.flagState();
  const r0store = ra.backupIfStoreHasDependencies(r0, out);

  // load rm8 into flag, then fallback to r_rm_f
  let flagToUse = Flags.OF;
  const res = [] as asm[];
  if (fs.CF !== FlagState.ALIVE && fs.OF !== FlagState.ALIVE) {
    // case 0: load flag via add
    let willClearFlag = Flags.CF;
    let constant = "0x7F"; // loads rm8 to OF
    if (Flags.CF === Paul.chooseFlag()) {
      // note that those two flag choices are exclusive... //TODO: maybe just call this at one positon. Which may be contraproductive if we consider to only change hot-vars... since it may not be really read.
      flagToUse = Flags.CF;
      willClearFlag = Flags.OF;
      constant = "0xFF"; // loads rm8 to CF
    }
    ra.declareFlagState(willClearFlag, FlagState.ZERO);
    let first_summand = cin.store;
    if (isMem(cin.store)) {
      first_summand = `byte ${first_summand}`;
    }
    res.push(
      `add ${first_summand}, ${constant}; load flag from rm/8 into ${flagToUse}, clears other flag. NOTE, if operand1 is not a byte reg, this fails.`,
    );
    //TODO: consider, adding 'cout' as otherThan, because it'd cause less (maybe? thats why this is a todo.)
    if (Model.hasDependants(ra.getVarnameFromStore(cin))) {
      res.push(`${SETX[flagToUse]} ${cin.store}; since that has deps, restore it where ever it was`);
    }
  } else {
    // case 1-5 load flag via adx
    if (fs.CF === fs.OF) {
      // case 1
      if (Flags.CF === Paul.chooseFlag()) {
        flagToUse = Flags.CF;
      }
      ra.spillFlag(flagToUse); // will cause one blad to be killed, so case 2 or 4 will be caught downstream
    }
    // case 2-5

    // load rm8 into a 64bit register
    fs = ra.flagState();
    let rm64_4: Register;
    if (isMem(cin.store)) {
      // if from mem, use ra (cause it takes care of getting a noice fresh register.)
      rm64_4 = ra.loadVarToReg(ra.getVarnameFromStore(cin), "movzx") as Register;
    } else {
      // if its in a reg already, just zeroextend it
      const { inst, reg } = zx(cin.store);
      rm64_4 = reg;
      res.push(inst);
    }
    // choose the flag which is not alive.
    flagToUse = fs.CF !== FlagState.ALIVE ? Flags.CF : Flags.OF;
    // now, get the constant in rm64/3 and determine a clear-instruction if necessary

    // clear Flag, if necessary
    if (fs.OF === FlagState.KILLED) {
      ra.clearFlag(Flags.OF);
    }
    if (fs.CF === FlagState.KILLED) {
      ra.clearFlag(Flags.CF);
    }
    const reg64_3 = ra.loadImmToReg64(toImm(-1));

    res.push(`${ADX[flagToUse]} ${rm64_4}, ${reg64_3}; loading flag`);
  }
  let r1store = r1.store;
  // probably not optimal
  if (isU1(r1)) {
    if (isByteRegister(r1.store)) {
      // || isRegister(r1.store)
      const { inst, reg } = zx(r1.store);
      r1store = reg;
      ra.addToPreInstructions(inst);
    } else {
      // must be u1 in memory then
      if (isFlag(r1.store)) {
        throw new Error(`${r1.store} is not a mem. and since I am in fr__r_rm_rm but r1 is a flag`);
      }
      r1store = ra.moveOneMemoryToRegister([r1], "movzx")[0].store;
    }
  }
  ra.declareVarForFlag(flagToUse, cout);
  return res.concat(`${ADX[flagToUse]} ${r0store}, ${r1store}`);
}
