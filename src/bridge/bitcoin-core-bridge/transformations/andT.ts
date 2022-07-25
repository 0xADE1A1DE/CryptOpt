import type { CryptOpt } from "@/types";

import { getScalarsAndImmMappedAsConstArg } from "../helpers";
import type { SSA } from "../raw.type";

export function transformAnd(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "and") {
    throw new Error("unsupported operation while transformAnd.");
  }
  let datatype: CryptOpt.Datatype_T = input.datatype;

  if (["i128", "i64"].includes(input.datatype)) {
    datatype = datatype.replaceAll("i", "u") as "u128" | "u64";
  }
  const args = getScalarsAndImmMappedAsConstArg(input.arguments);

  return {
    name: input.name,
    datatype,
    operation: "&",
    decisions: {},
    decisionsHot: [],
    arguments: args,
  };
}
