import type { CryptOpt } from "@/types";
import type { SSA } from "../raw.type";
import { getArguments } from "../helpers";

export function transformTrunc(input: Readonly<SSA>): CryptOpt.DynArgument {
  if (input.operation !== "trunc") {
    throw new Error("unsupported operation while transform trunc.");
  }
  if ("i128" !== input.datatype) {
    throw new Error("unsupported datatype while transform trunc.");
  }

  const { casts, scalars } = getArguments(input.arguments);

  if (casts[0].type != "i64") {
    throw new Error("I am Afraid. I cannot trunc to anything but i64.");
  }

  return {
    name: input.name,
    datatype: "u64",
    operation: "limb",
    decisions: {},
    decisionsHot: [],
    arguments: [scalars[0].id, "0"],
  };
}
