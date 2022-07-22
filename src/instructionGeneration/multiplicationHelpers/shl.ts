import { isImm } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import { AllocationFlags, asm,CryptOpt,Flags, FlagState } from "@/types";

export function mul_imm_shl(c: CryptOpt.StringInstruction): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const imm = c.arguments[1];
  if (!isImm(imm)) {
    throw new Error("arg[1] must be an immediate value");
  }
  const hex = imm as CryptOpt.HexConstant;

  switch (hex) {
    case "0x2":
      return mul_x_shl(c, "0x1");
    case "0x4":
      return mul_x_shl(c, "0x2");
    case "0x8":
      return mul_x_shl(c, "0x3");
    case "0x10":
      return mul_x_shl(c, "0x4");
    default:
      throw new Error("unsupported immediate value");
  }
}
function mul_x_shl(c: CryptOpt.StringInstruction, shiftCnt: CryptOpt.HexConstant): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const factor = c.arguments[0];
  const allocation = ra.allocate({
    oReg: c.name,
    in: [factor],
    allocationFlags:
      AllocationFlags.DISALLOW_MEM |
      AllocationFlags.IN_0_AS_OUT_REGISTER |
      AllocationFlags.SAVE_FLAG_CF |
      AllocationFlags.SAVE_FLAG_OF,
  });

  const resR = allocation.oReg[0];

  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  ra.declareFlagState(Flags.OF, FlagState.KILLED);
  return [
    ...ra.pres,
    `shl ${resR}, ${shiftCnt}; ${c.name[0]} <- ${factor} * ${c.arguments[1]}`,
    `;${ra.flagStateString()}`,
  ];
}
