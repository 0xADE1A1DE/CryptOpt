import type { CryptOpt } from "@/types";
import { SSA } from "../raw.type";

import { getArguments } from "../helpers";

export function transformZext(input: SSA): CryptOpt.DynArgument {
  if (input.operation !== "zext") {
    throw new Error("unsupported operation while transform zext.");
  }
  const { scalars, casts } = getArguments(input.arguments);

  let outType: CryptOpt.Datatype_T;
  if (casts[0].type === "i128") {
    outType = "u128";
  } else if (casts[0].type === "i64") {
    outType = "u64";
  } else {
    throw new Error(`I am Afraid. I cannot zext to anything but u64/u128.`);
  }
  // we dont really care, what the input is.
  // in the graph, it does not matter
  // while processing, we need to check whaat it is, either call RA.zext (to i64->i128) or movzx (for i1-> i64/i128)
  return {
    name: input.name,
    datatype: outType,
    operation: "zext",
    decisions: {},
    decisionsHot: [],
    arguments: scalars.map(({ id }) => id),
  };
}
