import { RegisterAllocator } from "@/registerAllocator";
import { AllocationFlags, FlagState, CryptOpt, asm, Flags } from "@/types";

export function mul_imm_imul(c: CryptOpt.StringInstruction): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const allocation = ra.allocate({
    oReg: c.name,
    in: [c.arguments[0]],
    allocationFlags: AllocationFlags.SAVE_FLAG_CF | AllocationFlags.SAVE_FLAG_OF,
  });

  // TODO: Bound checks?
  const resR = allocation.oReg[0]; // * to u64 is c.name[0] only
  const [arg0R] = allocation.in;

  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  ra.declareFlagState(Flags.OF, FlagState.KILLED);
  return [
    ...ra.pres,
    `imul ${resR}, ${arg0R}, ${c.arguments[1]}; ${c.name[0]} <- ${c.arguments[0]} * ${c.arguments[1]}`,
    `;${ra.flagStateString()}`,
  ];
}
