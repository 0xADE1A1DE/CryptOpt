import type { CryptOpt } from "@/types";
import { SSA } from "../raw.type";

import { getScalarsAndImmMappedAsConstArg } from "../helpers";

export function transformShl(input: SSA): CryptOpt.DynArgument {
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
      decisions: {},
      decisionsHot: [],
      arguments: [args[0], MAP[args[1]]],
    };
  }
  return {
    name: input.name,
    datatype: input.datatype == "i128" ? "u128" : "u64",
    operation: "<<",
    decisions: {},
    decisionsHot: [],
    arguments: args,
  };
}
