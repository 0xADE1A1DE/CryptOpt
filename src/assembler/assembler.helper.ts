import { Flags, Register } from "@/enums";
import { getQwRegFromByteReg, isByteRegister, isFlag, isRegister, matchArg } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { CryptOpt } from "@/types";

/**
 * This function will get the Register allocator and check, whether for any register, the
 *  same byte register is allocated as well. If so, itll throw.
 */
export function sanityCheckAllocations(c: CryptOpt.DynArgument): void {
  const ra = RegisterAllocator.getInstance();
  const allocations = ra.getCurrentAllocations();
  Object.entries(allocations).reduce((byReg, [varname, { store }]) => {
    let r64 = null;
    if (isRegister(store)) {
      r64 = store;
    }
    if (isByteRegister(store)) {
      r64 = getQwRegFromByteReg(store);
    }
    if (isFlag(store)) {
      r64 = store;
    }
    if (r64) {
      if (byReg[r64]) {
        throw new Error(
          `@calculating ${c.name.join("--")}, ${r64} is used twice. ${
            byReg[r64]
          } and for ${varname}. Allocations: ${ra.allocationString()}`,
        );
      }
      byReg[r64] = varname;
    }
    if (matchArg(varname)) {
      throw new Error("should not be allocated.");
    }
    return byReg;
  }, {} as { [k in Register | Flags]: string });
}
