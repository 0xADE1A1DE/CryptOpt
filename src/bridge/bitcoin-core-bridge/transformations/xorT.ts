import type { CryptOpt } from "@/types";
import { SSA } from "../raw.type";

import { getScalarsAndImmMappedAsConstArg } from "../helpers";

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
