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

import { AllocationFlags } from "@/enums";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function ror(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const [inVarname, imm8] = c.arguments as string[];
  const allocation = ra.allocate({
    oReg: c.name,
    in: [inVarname],
    allocationFlags: AllocationFlags.DISALLOW_XMM,
  });

  const ins =
    allocation.oReg[0] == allocation.in[0]
      ? `ror ${allocation.oReg[0]}, ${imm8}; ${c.name[0]} <- ${inVarname}>>${imm8}`
      : `rorx ${allocation.oReg[0]}, ${allocation.in[0]}, ${imm8}; ${c.name[0]} <- ${inVarname}>>${imm8}`;
  return [...ra.pres, ins];
}
