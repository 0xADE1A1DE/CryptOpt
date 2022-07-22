import { isByteRegister, isImm, llvm2CC } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";
import { AllocationFlags, Flags, FlagState } from "@/types";

export function cmp(c: CryptOpt.StringInstruction): asm[] {
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
