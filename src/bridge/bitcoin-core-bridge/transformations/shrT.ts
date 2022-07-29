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

import { getArguments, getScalarsAndImmMappedAsConstArg } from "../helpers";
import type { SSA } from "../raw.type";

export const transformAshr = shr;
export const transformLshr = shr;
function shr(input: SSA): CryptOpt.DynArgument {
  if (!["lshr", "ashr"].includes(input.operation)) {
    throw new Error("unsupported operation while transform shift right.");
  }
  if (!["i128", "i64"].includes(input.datatype)) {
    throw new Error("unsupported datatype while transform shift right.");
  }

  const { scalars, imm } = getArguments(input.arguments);
  // special case, if its a i128>>64
  if (imm[0].imm == "64" && input.datatype == "i128") {
    return {
      name: input.name,
      datatype: "u64",
      operation: "limb",
      decisions: {},
      decisionsHot: [],
      arguments: [scalars[0].id, "1"],
    };
  }
  const args = getScalarsAndImmMappedAsConstArg(input.arguments);
  return {
    name: input.name,
    datatype: input.datatype == "i128" ? "u128" : "u64",
    operation: input.operation == "lshr" ? ">>" : "sar",
    decisions: {},
    decisionsHot: [],
    arguments: args,
  };
}
