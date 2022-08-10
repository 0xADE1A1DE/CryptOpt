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
import type { Intermediate } from "./intermediate.type";

export function transformShl(input: SSA): Intermediate {
  if (input.operation !== "shl") {
    throw new Error("unsupported operation while transformShl.");
  }
  if (!["i128", "i64"].includes(input.datatype)) {
    throw new Error("unsupported datatype while transformShl.");
  }

  const args = getScalarsAndImmMappedAsConstArg(input.arguments);

  const MAP: { [a in CryptOpt.ConstArgument]: CryptOpt.HexConstant } = {
    "0x1": "0x2",
    "0x2": "0x4",
    "0x3": "0x8",
    "0x4": "0x10",
  };
  if (args[1] in MAP) {
    return {
      name: input.name,
      datatype: input.datatype == "i128" ? "u128" : "u64",
      operation: "*",
      arguments: [args[0], MAP[args[1]]],
    };
  }
  return {
    name: input.name,
    datatype: input.datatype == "i128" ? "u128" : "u64",
    operation: "<<",
    arguments: args,
  };
}
