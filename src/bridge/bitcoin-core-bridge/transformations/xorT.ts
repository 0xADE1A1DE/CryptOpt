/**
 * Copyright 2022 University of Adelaide
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

import type { CryptOpt } from "@/types";

import { getScalarsAndImmMappedAsConstArg } from "../helpers";
import type { SSA } from "../raw.type";

export function transformXor(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "xor") {
    throw new Error("unsupported operation while transformXOr.");
  }
  const datatype: CryptOpt.Datatype_T = input.datatype === "i64" ? "u64" : input.datatype;
  const args = getScalarsAndImmMappedAsConstArg(input.arguments);

  return {
    name: input.name,
    datatype,
    operation: "^",
    decisions: {},
    decisionsHot: [],
    arguments: args,
  };
}
