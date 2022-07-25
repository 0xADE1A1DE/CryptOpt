import { C_DI_HANDLE_FLAGS_KK, Flags, FlagState } from "@/enums";
import { ADX, isU1 } from "@/helper";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, MemoryAllocation, RegisterAllocation, U64RegisterAllocation } from "@/types";

export function fr__r_r(cout: string, out: string, r0: RegisterAllocation, r1: RegisterAllocation): asm[] {
  return fr__rm_r(cout, out, r0, r1);
}

export function fr__r_m(cout: string, out: string, r0: RegisterAllocation, m1: MemoryAllocation): asm[] {
  return fr__rm_r(cout, out, m1, r0);
}

// move m64/1 to reg, call r_rm
export function fr__m_m(cout: string, out: string, m0: MemoryAllocation, m1: MemoryAllocation): asm[] {
  const [r, m] = RegisterAllocator.getInstance().moveOneMemoryToRegister([m0, m1], "movzx");
  return fr__r_m(cout, out, r as U64RegisterAllocation, m);
}

// F, r64 = r64 + rm/64
//-if both are zero, flip a coin:
//// F<-OF?CF
//-if one is zero
//   F<-zeroF
//-> adFx r64/1, rm/64/2, F=x
//-if both are killed flip a coin:
////0->  if FR: xor fr, fr; else test al,al; try again
////1->  add r64/1, rm/64/2, F=CF; kills OF
// if one is killed, one is alive
// zero the killed one, try again
// if both are alive; spill(=kill) one randomly, try again
//
// CF  OF   case
// k   k    0       coin: add     || ( xor/test + 0 )
// a   a    1       coin: spillCF || spillOF
// z   z    2       coin: adox    || adcx
// a   k    3       zero OF + adox
// k   a    4       zero CF + adcx
// k   z    5       adox
// a   z    6       adox
// z   k    7       adcx
// z   a    8       adcx
function fr__rm_r(
  cout: string,
  out: string,
  r1: MemoryAllocation | RegisterAllocation,
  r0: RegisterAllocation,
): asm[] {
  const ra = RegisterAllocator.getInstance();
  const r0store = ra.backupIfStoreHasDependencies(r0, out);
  let fs = ra.flagState();
  let r1store = r1.store;
  if (isU1(r1)) {
    r1store = ra.loadVarToReg(ra.getVarnameFromStore(r1), "movzx");
  }

  if (fs.CF === FlagState.KILLED && fs.OF === FlagState.KILLED) {
    // case 0
    // here we need to decide, whether
    // we want to clear both flags and use adx
    // or just use the descructive add operation, killing OF, writing CF
    const choice = Paul.chooseHandleFlagsKK();
    if (choice === C_DI_HANDLE_FLAGS_KK.C_ADD) {
      // use descructive add
      ra.declareVarForFlag(Flags.CF, cout);
      //  no need to declare OF as killed, since it is declared as such anyway
      return [`add ${r0store}, ${r1store}; could be done better, if r0 has been u8 as well`];
    }
    // else clear flags, and continue (and use eventually adx)
    if (choice === C_DI_HANDLE_FLAGS_KK.C_TEST_ADX) {
      ra.addToPreInstructions(`test al, al`);
    }
    if (choice === C_DI_HANDLE_FLAGS_KK.C_XOR_ADX) {
      const reg = ra.getW("0x0");
      ra.addToPreInstructions(`xor ${reg}, ${reg}`);
    }
    ra.declareFlagState(Flags.CF, FlagState.ZERO);
    ra.declareFlagState(Flags.OF, FlagState.ZERO);
    fs = ra.flagState();
  }

  let flagToUse: Flags | null = null;
  if (fs.CF == fs.OF) {
    // case 1 and case 2
    // choose one randomly
    flagToUse = Paul.chooseFlag();
    if (fs[flagToUse] === FlagState.ALIVE) {
      ra.spillFlag(flagToUse); // implicitly kills it
    }
  }

  fs = ra.flagState();
  if (fs.CF === FlagState.ALIVE && fs.OF === FlagState.KILLED) {
    // case 3
    ra.clearFlag(Flags.OF);
    flagToUse = Flags.OF;
  }
  if (fs.CF === FlagState.KILLED && fs.OF === FlagState.ALIVE) {
    // case 4
    ra.clearFlag(Flags.CF);
    flagToUse = Flags.CF;
  }

  fs = ra.flagState();
  if (fs.CF === FlagState.ZERO) {
    // case 5 + 6
    flagToUse = Flags.CF;
  }

  if (fs.OF === FlagState.ZERO) {
    // case 7 + 8
    flagToUse = Flags.OF;
  }
  if (!flagToUse) {
    throw new Error("TSNH. still no known flag to use.");
  }

  // one flag has been zero
  ra.declareVarForFlag(flagToUse, cout);
  return [`${ADX[flagToUse]} ${r0store}, ${r1store}`];
}
