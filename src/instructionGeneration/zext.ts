import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function zext(c: CryptOpt.StringInstruction): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);

  if (c.datatype !== "u128") {
    throw new Error("zext not supported when datatype !=u128");
  }
  if (c.arguments.length !== 1) {
    throw new Error("zext not supported when arguments.length !=1");
  }
  if (c.name.length !== 1) {
    throw new Error("zext not supported when name.length !=1");
  }

  ra.zext(c.arguments[0], c.name[0]);
  return [...ra.pres];
}
