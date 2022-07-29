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

import { getArguments } from "../helpers";
import type { SSA } from "../raw.type";

export function transformAdd(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "add") {
    throw new Error("unsupported operation while transform add.");
  }
  if (!["i128", "i64"].includes(input.datatype)) {
    throw new Error("unsupported datatype while transform add.");
  }

  const { scalars } = getArguments(input.arguments);

  return {
    name: input.name,
    datatype: input.datatype == "i128" ? "u128" : "u64",
    operation: "+",
    decisions: {},
    decisionsHot: [],
    arguments: scalars.map(({ id }) => id),
  };
}
