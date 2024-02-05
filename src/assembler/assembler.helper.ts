/**
 * Copyright 2023 University of Adelaide
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { Flags, Register, XmmRegister } from "@/enums";
import { getQwRegFromByteReg, isByteRegister, isFlag, isRegister, isMem, isXmmRegister, matchArg } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { CryptOpt } from "@/types";

/**
 * This function will get the Register allocator and check, whether for any register, the
 *  same byte register is allocated as well. If so, itll throw.
 */
export function sanityCheckAllocations(c: CryptOpt.DynArgument): void {
  const ra = RegisterAllocator.getInstance();
  const allocations = ra.getCurrentAllocations();
  Object.entries(allocations).reduce(
    (byReg, [varname, { store }]) => {
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
      if (isXmmRegister(store)) {
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
      if (matchArg(varname) && isMem(store)) {
        throw new Error("should not be allocated.");
      }
      return byReg;
    },
    {} as { [k in Register | Flags | XmmRegister]: string },
  );
}
