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

export function transformTrunc(input: Readonly<SSA>): CryptOpt.DynArgument {
  if (input.operation !== "trunc") {
    throw new Error("unsupported operation while transform trunc.");
  }
  if ("i128" !== input.datatype) {
    throw new Error("unsupported datatype while transform trunc.");
  }

  const { casts, scalars } = getArguments(input.arguments);

  if (casts[0].type != "i64") {
    throw new Error("I am Afraid. I cannot trunc to anything but i64.");
  }

  return {
    name: input.name,
    datatype: "u64",
    operation: "limb",
    decisions: {},
    decisionsHot: [],
    arguments: [scalars[0].id, "0"],
  };
}
