import { isByteRegister, isFlag, isImm, isU1 } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import { asm, Flags, FlagState, imm,U1Allocation, U64Allocation } from "@/types";

export function fr__frm_rmi(
  cout: string,
  out: string,
  arg0: U64Allocation | U1Allocation,
  arg1: imm | U64Allocation | U1Allocation,
): asm[] {
  if (isFlag(arg0.store)) {
    throw new Error("am i handling that correctly?");
  }
  const ra = RegisterAllocator.getInstance();
  const fs = ra.flagState();
  if (fs.CF === FlagState.ALIVE) {
    ra.spillFlag(Flags.CF);
  }
  if (fs.OF === FlagState.ALIVE) {
    ra.spillFlag(Flags.OF);
  }
  const reg = ra.backupIfStoreHasDependencies(arg0, out);
  if (isByteRegister(reg)) {
    throw new Error("Double check, if thats a valid substration from a byte reg.");
  }
  if (typeof arg1 === "string" && isImm(arg1)) {
    if (!arg1.startsWith("0x0")) {
      // since sub cannot handle imm64 and signextends imm32,
      // we need to move it to a reg before if its an imm.
      arg1 = ra.loadImmToReg64(arg1);
    }
  } else {
    if (isU1(arg1)) {
      throw Error(`arg1 ${arg1} sould not be u1.Maybe.`);
    }
    arg1 = (arg1 as U64Allocation).store;
  }

  ra.declareVarForFlag(Flags.CF, cout);
  ra.declareFlagState(Flags.OF, FlagState.KILLED);
  // here, arg1 is either <=imm32 or a reg or an mem
  return [`sub ${reg}, ${arg1}`];
}
