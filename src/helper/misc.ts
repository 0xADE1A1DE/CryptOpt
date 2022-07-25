import { cloneDeep } from "lodash";

import { Flags, Register } from "@/enums";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type {
  CryptOpt,
} from "@/types";

import { isByteRegister, isFlag,  isRegister, matchArg,  } from "./lamdas";
import { getQwRegFromByteReg } from "./reg-conversion";

/**
 * will make a deep copy of @param nodes,
 * @returns a new Array with a mixed order
 * @param _elements input array to shuffle
 */
export function mix<T>(_elements: T[]): T[] {
  const elements = cloneDeep(_elements) as T[];
  const len = elements.length;
  const res = new Array(len);
  for (let i = 0; i < len; i++) {
    const c = Paul.pick(elements);
    res[i] = c;
  }
  return res;
}

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
