import type { CryptOpt } from "@/types";

import { getScalarsAndImmMappedAsConstArg } from "../helpers";
import type { SSA } from "../raw.type";

export function transformMul(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "mul") {
    throw new Error("unsupported operation while transform mul.");
  }
  if (!["i128", "i64"].includes(input.datatype)) {
    throw new Error("unsupported datatype while transform mul.");
  }

  const args = getScalarsAndImmMappedAsConstArg(input.arguments);

  return {
    name: input.name,
    datatype: input.datatype == "i128" ? "u128" : "u64",
    operation: "mulx",
    decisions: {},
    decisionsHot: [],
    arguments: args,
  };
}
