import { RegisterAllocator } from "@/registerAllocator";

import { CryptOpt } from "../types";
import { asm } from "../types";

export function ror(c: CryptOpt.StringInstruction): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const [inVarname, imm8] = c.arguments as string[];
  const allocation = ra.allocate({
    oReg: c.name,
    in: [inVarname],
  });

  const ins =
    allocation.oReg[0] == allocation.in[0]
      ? `ror ${allocation.oReg[0]}, ${imm8}; ${c.name[0]} <- ${inVarname}>>${imm8}`
      : `rorx ${allocation.oReg[0]}, ${allocation.in[0]}, ${imm8}; ${c.name[0]} <- ${inVarname}>>${imm8}`;
  return [...ra.pres, ins];
}
