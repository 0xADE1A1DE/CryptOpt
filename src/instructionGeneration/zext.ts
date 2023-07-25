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

import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function zext(c: CryptOpt.StringOperation): asm[] {
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
