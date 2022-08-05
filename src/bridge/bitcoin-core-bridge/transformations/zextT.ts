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

import type { Intermediate } from "./intermediate.type";

import { getArguments } from "../helpers";
import type { SSA } from "../raw.type";

export function transformZext(input: SSA): Intermediate {
  if (input.operation !== "zext") {
    throw new Error("unsupported operation while transform zext.");
  }
  const { scalars, casts } = getArguments(input.arguments);

  let outType: Intermediate["datatype"];
  if (casts[0].type === "i128") {
    outType = "u128";
  } else if (casts[0].type === "i64") {
    outType = "u64";
  } else {
    throw new Error(`I am Afraid. I cannot zext to anything but u64/u128.`);
  }
  const args = scalars.map(({ id }) => id);
  // we dont really care, what the input is.
  // in the graph, it does not matter
  // while processing, we need to check whaat it is, either call RA.zext (to i64->i128) or movzx (for i1-> i64/i128)
  return {
    name: input.name,
    datatype: outType,
    operation: "zext",
    arguments: args,
  };
}
