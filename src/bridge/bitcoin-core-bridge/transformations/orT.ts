import type { CryptOpt } from "@/types";
import { SSA } from "../raw.type";

import { getArguments } from "../helpers";

export function transformOr(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "or") {
    throw new Error("unsupported operation while transformOr.");
  }
  const datatype: CryptOpt.Datatype_T = input.datatype === "i64" ? "u64" : input.datatype;
  const { scalars } = getArguments(input.arguments);

  return {
    name: input.name,
    datatype,
    operation: "|",
    decisions: {},
    decisionsHot: [],
    arguments: scalars.map(({ id }) => id),
  };
}
