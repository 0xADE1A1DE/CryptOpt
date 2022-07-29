import { AllocationFlags } from "@/enums";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function limb(c: CryptOpt.StringOperation): asm[] {
  if (c.name.length !== 1 || c.arguments.length !== 2) {
    throw new Error(`${c.operation} with more than one name or not 2 args is not supported.`);
  }
  const [readVar, limbNo] = c.arguments;

  if (!["0", "1"].includes(limbNo)) {
    throw new Error("currently only supporing 0/1 limbs");
  }

  if (c.datatype !== "u64") {
    throw new Error("currently only supporing u64");
  }

  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const readVarAlloc = ra.getCurrentAllocations()[readVar];
  // because it could be like i1 or u8
  if (!["u64", "u128"].includes(readVarAlloc.datatype)) {
    throw new Error("currently can only use limb-op on u128 (or u64 -> rename)");
  }

  if (readVarAlloc.datatype == "u64") {
    ra.lazyMov(readVar, c.name[0]);
  } else if (readVarAlloc.datatype === "u128") {
    ra.allocate({
      oReg: c.name,
      in: [`${readVar}_${limbNo}`],
      allocationFlags: AllocationFlags.IN_0_AS_OUT_REGISTER,
    });
  }
  return [...ra.pres];
}
