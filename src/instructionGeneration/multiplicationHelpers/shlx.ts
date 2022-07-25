import { AllocationFlags, } from "@/enums";
import { isImm } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function mul_imm_shlx(c: CryptOpt.StringInstruction): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const imm = c.arguments[1];
  if (!isImm(imm)) {
    throw new Error("arg[1] must be an immediate value");
  }
  const hex = imm as CryptOpt.HexConstant;
  switch (hex) {
    case "0x2":
      return mul_x_shlx(c, "0x1");
    case "0x4":
      return mul_x_shlx(c, "0x2");
    case "0x8":
      return mul_x_shlx(c, "0x3");
    case "0x10":
      return mul_x_shlx(c, "0x4");

    default:
      throw new Error("unsupported immediate value");
  }
}
function mul_x_shlx(c: CryptOpt.StringInstruction, shiftCnt: CryptOpt.HexConstant): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const factor = c.arguments[0];
  const allocation = ra.allocate({
    oReg: c.name,
    in: [factor, shiftCnt],
    allocationFlags: AllocationFlags.DISALLOW_IMM,
  });

  const resR = allocation.oReg[0];
  const [arg0R, immR] = allocation.in;

  return [
    ...ra.pres,
    `shlx ${resR}, ${arg0R}, ${immR}; ${c.name[0]} <- ${factor} * ${c.arguments[1]} (shlx does not change the flags)`,
    `;${ra.flagStateString()}`,
  ];
}
