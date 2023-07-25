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

import { AllocationFlags, Flags, FlagState } from "@/enums";
import Logger from "@/helper/Logger.class";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function mul_imm_imul(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const allocation = ra.allocate({
    oReg: c.name,
    in: [c.arguments[0]],
    allocationFlags:
      AllocationFlags.DISALLOW_XMM | AllocationFlags.SAVE_FLAG_CF | AllocationFlags.SAVE_FLAG_OF,
  });

  // TODO: Bound checks?
  const resR = allocation.oReg[0]; // * to u64 is c.name[0] only
  const [arg0R] = allocation.in;

  ra.declareFlagState(Flags.CF, FlagState.KILLED);
  ra.declareFlagState(Flags.OF, FlagState.KILLED);
  return [
    ...ra.pres,
    `imul ${resR}, ${arg0R}, ${c.arguments[1]}; ${c.name[0]} <- ${c.arguments[0]} * ${c.arguments[1]}`,
    Logger.log(`;${ra.flagStateString()}`) ?? "",
  ];
}
