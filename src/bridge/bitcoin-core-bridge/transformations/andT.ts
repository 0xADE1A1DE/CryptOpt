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

import { getScalarsAndImmMappedAsConstArg } from "../helpers";
import type { SSA } from "../raw.type";
import type { Intermediate } from "./intermediate.type";

export function transformAnd(input: SSA): Intermediate {
  if (input.operation !== "and") {
    throw new Error("unsupported operation while transformAnd.");
  }
  let datatype: Intermediate["datatype"] = input.datatype;

  if (["i128", "i64"].includes(input.datatype)) {
    datatype = datatype.replaceAll("i", "u") as "u128" | "u64";
  }
  const args = getScalarsAndImmMappedAsConstArg(input.arguments);

  return {
    name: input.name,
    datatype,
    operation: "&",
    arguments: args,
  };
}
