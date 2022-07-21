import type { CryptOpt } from "@/types";
import { llvm2CC } from "@/constants";
import { SSA } from "../raw.type";

import { getScalarsAndImmMappedAsConstArg } from "../helpers";

export function transformIcmp(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "icmp") {
    throw new Error("unsupported operation while transformAnd.");
  }

  const comparisonString = input.modifiers.trim().toLocaleLowerCase();
  if (!(comparisonString in llvm2CC)) {
    throw Error(`cannot find comparisonString ${comparisonString} in llvm2CC-map`);
  }

  const args = getScalarsAndImmMappedAsConstArg(input.arguments);

  return {
    name: input.name,
    datatype: "i1",
    operation: "cmp",
    decisions: {},
    decisionsHot: [],
    arguments: [
      comparisonString as CryptOpt.ConstArgument /* liitle bit of a cheat. The correct way would be to create types for all ops, then put that as 'modifier'/'parameter' to cmp. Or to have many many cmp-ops ... And we chose the ~lazy~ straigt forward way.*/,
      ...args,
    ],
  };
}
