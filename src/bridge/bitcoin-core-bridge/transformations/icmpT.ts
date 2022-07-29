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

import { llvm2CC } from "@/helper";
import type { CryptOpt } from "@/types";

import { getScalarsAndImmMappedAsConstArg } from "../helpers";
import type { SSA } from "../raw.type";

export function transformIcmp(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "icmp") {
    throw new Error("unsupported operation while transformAnd.");
  }

  const comparisonString = input.modifiers.trim().toLocaleLowerCase();
  if (!(comparisonString in llvm2CC)) {
    throw Error(`cannot find comparisonString ${comparisonString} in llvm2CC-map`);
  }

  const args = getScalarsAndImmMappedAsConstArg(input.arguments);

  return {
    name: input.name,
    datatype: "i1",
    operation: "cmp",
    decisions: {},
    decisionsHot: [],
    arguments: [
      comparisonString as CryptOpt.ConstArgument /* liitle bit of a cheat. The correct way would be to create types for all ops, then put that as 'modifier'/'parameter' to cmp. Or to have many many cmp-ops ... And we chose the ~lazy~ straigt forward way.*/,
      ...args,
    ],
  };
}
