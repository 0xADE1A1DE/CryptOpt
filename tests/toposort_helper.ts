import { describe, expect, it, vi } from "vitest";

import { preprocessFunction } from "@/helper";
import type { Fiat } from "@/types";

const body = [
  {
    datatype: "u64",
    name: ["x1"],
    operation: "*",
    arguments: ["arg1[4]", "0x13"],
  },
  {
    datatype: "u64",
    name: ["x2"],
    operation: "*",
    arguments: ["x1", "0x2"],
  },
  {
    datatype: "u64",
    name: ["x3"],
    operation: "*",
    arguments: ["arg1[4]", "0x2"],
  },
  {
    datatype: "u64",
    name: ["x4"],
    operation: "*",
    arguments: ["arg1[3]", "0x13"],
  },
  {
    datatype: "u64",
    name: ["x5"],
    operation: "*",
    arguments: ["x4", "0x2"],
  },
  {
    datatype: "u64",
    name: ["x6"],
    operation: "*",
    arguments: ["arg1[3]", "0x2"],
  },
  {
    datatype: "u64",
    name: ["x7"],
    operation: "*",
    arguments: ["arg1[2]", "0x2"],
  },
  {
    datatype: "u64",
    name: ["x8"],
    operation: "*",
    arguments: ["arg1[1]", "0x2"],
  },
  {
    datatype: "u128",
    name: ["x9"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[4]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x1"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x10"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[3]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x2"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x11"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[3]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x4"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x12"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[2]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x2"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x13"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[2]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x5"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x14"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[2]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[2]"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x15"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[1]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x2"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x16"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[1]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x6"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x17"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[1]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x7"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x18"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[1]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[1]"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x19"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[0]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x3"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x20"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[0]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x6"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x21"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[0]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x7"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x22"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[0]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x8"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x23"],
    operation: "*",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[0]"],
      },
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["arg1[0]"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x24"],
    operation: "+",
    arguments: [
      "x23",
      {
        datatype: "u128",
        name: [],
        operation: "+",
        arguments: ["x15", "x13"],
      },
    ],
  },
  {
    datatype: "u64",
    name: ["x25"],
    operation: "static_cast",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: ">>",
        arguments: ["x24", "51"],
      },
    ],
  },
  {
    datatype: "u64",
    name: ["x26"],
    operation: "&",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: "static_cast",
        arguments: ["x24"],
      },
      "0x7ffffffffffff",
    ],
  },
  {
    datatype: "u128",
    name: ["x27"],
    operation: "+",
    arguments: [
      "x19",
      {
        datatype: "u128",
        name: [],
        operation: "+",
        arguments: ["x16", "x14"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x28"],
    operation: "+",
    arguments: [
      "x20",
      {
        datatype: "u128",
        name: [],
        operation: "+",
        arguments: ["x17", "x9"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x29"],
    operation: "+",
    arguments: [
      "x21",
      {
        datatype: "u128",
        name: [],
        operation: "+",
        arguments: ["x18", "x10"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x30"],
    operation: "+",
    arguments: [
      "x22",
      {
        datatype: "u128",
        name: [],
        operation: "+",
        arguments: ["x12", "x11"],
      },
    ],
  },
  {
    datatype: "u128",
    name: ["x31"],
    operation: "+",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x25"],
      },
      "x30",
    ],
  },
  {
    datatype: "u64",
    name: ["x32"],
    operation: "static_cast",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: ">>",
        arguments: ["x31", "51"],
      },
    ],
  },
  {
    datatype: "u64",
    name: ["x33"],
    operation: "&",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: "static_cast",
        arguments: ["x31"],
      },
      "0x7ffffffffffff",
    ],
  },
  {
    datatype: "u128",
    name: ["x34"],
    operation: "+",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x32"],
      },
      "x29",
    ],
  },
  {
    datatype: "u64",
    name: ["x35"],
    operation: "static_cast",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: ">>",
        arguments: ["x34", "51"],
      },
    ],
  },
  {
    datatype: "u64",
    name: ["x36"],
    operation: "&",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: "static_cast",
        arguments: ["x34"],
      },
      "0x7ffffffffffff",
    ],
  },
  {
    datatype: "u128",
    name: ["x37"],
    operation: "+",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x35"],
      },
      "x28",
    ],
  },
  {
    datatype: "u64",
    name: ["x38"],
    operation: "static_cast",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: ">>",
        arguments: ["x37", "51"],
      },
    ],
  },
  {
    datatype: "u64",
    name: ["x39"],
    operation: "&",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: "static_cast",
        arguments: ["x37"],
      },
      "0x7ffffffffffff",
    ],
  },
  {
    datatype: "u128",
    name: ["x40"],
    operation: "+",
    arguments: [
      {
        datatype: "u128",
        name: [],
        operation: "static_cast",
        arguments: ["x38"],
      },
      "x27",
    ],
  },
  {
    datatype: "u64",
    name: ["x41"],
    operation: "static_cast",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: ">>",
        arguments: ["x40", "51"],
      },
    ],
  },
  {
    datatype: "u64",
    name: ["x42"],
    operation: "&",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: "static_cast",
        arguments: ["x40"],
      },
      "0x7ffffffffffff",
    ],
  },
  {
    datatype: "u64",
    name: ["x43"],
    operation: "*",
    arguments: ["x41", "0x13"],
  },
  {
    datatype: "u64",
    name: ["x44"],
    operation: "+",
    arguments: ["x26", "x43"],
  },
  {
    datatype: "u64",
    name: ["x45"],
    operation: ">>",
    arguments: ["x44", "51"],
  },
  {
    datatype: "u64",
    name: ["x46"],
    operation: "&",
    arguments: ["x44", "0x7ffffffffffff"],
  },
  {
    datatype: "u64",
    name: ["x47"],
    operation: "+",
    arguments: ["x45", "x33"],
  },
  {
    datatype: "u1",
    name: ["x48"],
    operation: "static_cast",
    arguments: [
      {
        datatype: "u1",
        name: [],
        operation: ">>",
        arguments: ["x47", "51"],
      },
    ],
  },
  {
    datatype: "u64",
    name: ["x49"],
    operation: "&",
    arguments: ["x47", "0x7ffffffffffff"],
  },
  {
    datatype: "u64",
    name: ["x50"],
    operation: "+",
    arguments: [
      {
        datatype: "u64",
        name: [],
        operation: "static_cast",
        arguments: ["x48"],
      },
      "x36",
    ],
  },
  {
    datatype: "(auto)",
    name: ["out1[0]"],
    operation: "=",
    arguments: ["x46"],
  },
  {
    datatype: "(auto)",
    name: ["out1[1]"],
    operation: "=",
    arguments: ["x49"],
  },
  {
    datatype: "(auto)",
    name: ["out1[2]"],
    operation: "=",
    arguments: ["x50"],
  },
  {
    datatype: "(auto)",
    name: ["out1[3]"],
    operation: "=",
    arguments: ["x39"],
  },
  {
    datatype: "(auto)",
    name: ["out1[4]"],
    operation: "=",
    arguments: ["x42"],
  },
] as Fiat.DynArgument[];

export const fiat_curve25519_carry_square = preprocessFunction({
  operation: "fiat_curve25519_carry_square",
  arguments: [
    {
      datatype: "u64[5]",
      name: "arg1",
      lbound: ["0x0", "0x0", "0x0", "0x0", "0x0"],
      ubound: [
        "0x18000000000000",
        "0x18000000000000",
        "0x18000000000000",
        "0x18000000000000",
        "0x18000000000000",
      ],
    },
  ],
  returns: [
    {
      datatype: "u64[5]",
      name: "out1",
      lbound: ["0x0", "0x0", "0x0", "0x0", "0x0"],
      ubound: ["0x8000000000000", "0x8000000000000", "0x8000000000000", "0x8000000000000", "0x8000000000000"],
    },
  ],
  body,
});
describe("export", () =>
  it("should be tru", () => {
    expect(
      fiat_curve25519_carry_square.body.every((n) => n.arguments.every((a) => typeof a === "string")),
    ).toBe(true);
  }));
