import type { CryptOpt } from "@/types";

import { getArguments } from "../helpers";
import { SSA } from "../raw.type";

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
