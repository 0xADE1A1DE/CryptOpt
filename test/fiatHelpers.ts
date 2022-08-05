/**
 * Copyright 2022 University of Adelaide
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, expect, it } from "vitest";

import fiat from "@/bridge/fiat-bridge/all_fiat_array";
import { preprocessFunction } from "@/helper";
import type { Fiat } from "@/types";
import { DECISION_IDENTIFIER, C_DI_SPILL_LOCATION } from "@/enums";

const boilerplate = {
  operation: "secp256k1_fe_mul_inner",
  arguments: [
    { name: "arg1", datatype: "u64[0]", lbound: ["0x0"], ubound: ["0x0"] },
    { name: "arg2", datatype: "u64[0]", lbound: ["0x0"], ubound: ["0x0"] },
  ],
  returns: [{ name: "out1", datatype: "u64[1]", lbound: ["0x0"], ubound: ["0x0"] }],
  body: [],
} as Fiat.FiatFunction;
const createOut = (arg: Fiat.ConstArgument): Fiat.DynArgument => {
  return {
    name: ["out1[0]"],
    datatype: "u64",
    operation: "=",
    arguments: [arg],
  };
};

describe("preprocessFunction", () => {
  it("tsc cast", () => {
    const b: Fiat.FiatFunction[] = fiat;
    expect(b).not.toBeFalsy();
    // more like dont have unused and have tsc run smoothly
  });
  it("reduce cast ", () => {
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            datatype: "u64",
            name: ["x5", "x6"],
            operation: "mulx",
            arguments: [
              {
                datatype: "u64",
                name: [],
                operation: "static_cast",
                arguments: ["x4"],
              },
              {
                datatype: "u64",
                name: [],
                operation: "static_cast",
                arguments: ["arg2[3]"],
              },
            ],
          },
          createOut("x5"),
        ],
      }),
    ).body[0];
    expect(result.arguments).toHaveLength(2);
    expect(result.arguments).toStrictEqual(["x4", "arg2[3]"]);
  });
  it("recursive casts", () => {
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            datatype: "u128",
            name: ["x1"],
            operation: "static_cast",
            arguments: [
              {
                datatype: "u128",
                name: [],
                operation: "static_cast",
                arguments: [
                  {
                    datatype: "u128",
                    name: [],
                    operation: "+",
                    arguments: [
                      {
                        datatype: "u64",
                        name: [],
                        operation: "static_cast",
                        arguments: ["arg1"],
                      },
                      {
                        datatype: "u64",
                        name: [],
                        operation: "static_cast",
                        arguments: ["arg2"],
                      },
                    ],
                  },
                ],
              },
            ],
          },
          createOut("x1"),
        ],
      }),
    ).body[0];
    expect(result.operation).toBe("+");
    expect(result.datatype).toBe("u128");
    expect(result.name).toStrictEqual(["x1"]);

    expect(result.arguments).toHaveLength(2);
    expect(result.arguments[0]).toBe("arg1");
    expect(result.arguments[1]).toBe("arg2");
  });
  it("(auto)->u64 ", () => {
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            datatype: "(auto)",
            name: ["x5", "x6"],
            parameters: {
              size: 64,
            },
            operation: "mulx",
            arguments: ["x4", "arg2[3]"],
          },
          createOut("x5"),
        ],
      }),
    ).body[0];
    expect(result.datatype).toBe("u64");
    expect(result).not.toHaveProperty("parameters");
  });
  it("recursive replacements ", () => {
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            datatype: "u128",
            name: ["x1"],
            operation: "+",
            arguments: [
              {
                datatype: "u64",
                name: [],
                operation: "*",
                arguments: ["arg1", "arg2"],
              },
              "arg3",
            ],
          },
          createOut("x1"),
        ],
      }),
    ).body;
    expect(result).toHaveLength(3);
    const b0 = result[0];
    const b1 = result[1];
    const b2 = result[2];
    expect(b0.name[0]).toMatch(/x10[0-9]+/);
    expect(b0.operation).toBe("*");
    expect(b0.datatype).toBe("u64");
    expect(b0.arguments).toHaveLength(2);
    expect(b0.arguments[0]).toBe("arg1");
    expect(b0.arguments[1]).toBe("arg2");
    expect(b1.name[0]).toBe("x1");
    expect(b1.datatype).toBe("u128");
    expect(b1.arguments).toHaveLength(2);
    expect(b1.arguments[0]).toBe(b0.name[0]);
    expect(b1.arguments[1]).toBe("arg3");
    expect(b2.name[0]).toBe("out1[0]");
    expect(b2.datatype).toBe("u64");
    expect(b2.operation).toBe("=");
    expect(b2.arguments).toHaveLength(1);
    expect(b2.arguments[0]).toBe(b1.name[0]);
  });
  it("reduce xD=argN[n] to its uses.", () => {
    // should remove the assignment and put argN[N] into  the correct spot
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            name: ["x4"],
            datatype: "u64",
            operation: "=",
            arguments: ["arg1[0]"],
            decisions: { di_choose_arg: [0, ["arg1[0]"]] },
            decisionsHot: [],
          },
          {
            name: ["x6"],
            datatype: "u64",
            operation: "=",
            arguments: ["arg1[1]"],
            decisions: { di_choose_arg: [0, ["arg1[1]"]] },
            decisionsHot: [],
          },
          {
            name: ["x13"],
            datatype: "u128",
            operation: "zext",
            decisions: { di_choose_arg: [0, ["x4"]] },
            decisionsHot: [],
            arguments: ["x4"],
          },
          {
            name: ["x16"],
            datatype: "u128",
            operation: "zext",
            decisions: { di_choose_arg: [0, ["x15"]] },
            decisionsHot: [],
            arguments: ["x15"],
          },
          {
            name: ["x18"],
            datatype: "u128",
            operation: "+",
            decisions: { di_choose_arg: [0, ["x6", "x4"]] },
            decisionsHot: [],
            arguments: ["x6", "x4"],
          },
          createOut("x13"),
          createOut("x16"),
          createOut("x18"),
        ],
      }),
    ).body;
    expect(result).toHaveLength(6);
    const [a, b, c, o1, o2, o3] = result;
    expect(a.name[0]).toBe("x13");
    expect(a.operation).toBe("zext");
    expect(a.arguments).toHaveLength(1);
    expect(a.arguments[0]).toBe("arg1[0]");
    expect(a.decisions.di_choose_arg?.[1][0]).toBe("arg1[0]");

    // untouched
    expect(b.name[0]).toBe("x16");
    expect(b.operation).toBe("zext");
    expect(b.arguments).toHaveLength(1);
    expect(b.arguments[0]).toBe("x15");
    expect(b.decisions.di_choose_arg?.[1][0]).toBe("x15");

    // two replacements
    expect(c.name[0]).toBe("x18");
    expect(c.operation).toBe("+");
    expect(c.arguments).toHaveLength(2);
    expect(c.arguments[0]).toBe("arg1[1]");
    expect(c.arguments[1]).toBe("arg1[0]");
    expect(c.decisions.di_choose_arg?.[1][0]).toBe("arg1[1]");
    expect(c.decisions.di_choose_arg?.[1][1]).toBe("arg1[0]");

    expect(o1.operation).toBe("=");
    expect(o2.operation).toBe("=");
    expect(o3.operation).toBe("=");
  });
  it("should remove dead ops, i.e. x2=... but never read.", () => {
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            name: ["x1"],
            arguments: ["arg1[5]", "0x2"],
            operation: "*",
            datatype: "u64",
          },
          {
            // to be removed
            name: ["x2"],
            arguments: ["arg1[5]", "0x2"],
            operation: "*",
            datatype: "u64",
          },
          createOut("x1"),
        ],
      }),
    ).body;
    expect(result).toHaveLength(2);
    expect(result.map(({ name }) => name[0])).not.toContain("x2");
  });
  it("should reduce x2=arg1[8] *2; x10001 = x2*2 to x2=arg1[8] *2; x10001 = arg1[8]*4, and KEEP x2", () => {
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            // keep this to make sure that they dont end up missing
            name: ["x10006"],
            arguments: ["arg1[5]", "0x2"],
            operation: "*",
            datatype: "u64",
          },
          {
            datatype: "u64",
            name: ["x2"],
            operation: "*",
            arguments: ["arg1[8]", "0x2"],
          },
          {
            name: ["x10001"],
            arguments: ["x2", "0x2"],
            operation: "*",
            datatype: "u64",
          },
          {
            //artifical
            name: ["x10002"],
            arguments: ["x2", "x2"],
            operation: "*",
            datatype: "u64",
          },
          createOut("x10002"),
          createOut("x10001"),
          createOut("x10006"),
        ],
      }),
    ).body;
    expect(result).toHaveLength(7);

    expect(result[0].name).toStrictEqual(["x10002"]);
    expect(result[0].arguments).toStrictEqual(["x2", "x2"]);
    expect(result[0].operation).toBe("*");
    expect(result[0].datatype).toBe("u64");
    expect(result[0].decisions.di_choose_arg?.[1]).toStrictEqual(["x2", "x2"]);

    expect(result[1].operation).toBe("=");
    expect(result[2].operation).toBe("=");
    expect(result[3].operation).toBe("=");

    expect(result[4].name).toStrictEqual(["x10006"]);
    expect(result[4].arguments).toStrictEqual(["arg1[5]", "0x2"]);
    expect(result[4].operation).toBe("*");
    expect(result[4].datatype).toBe("u64");
    expect(result[4].decisions.di_choose_arg?.[1]).toStrictEqual(["arg1[5]", "0x2"]);
    expect(result[4].decisions.di_mult_imm?.[1]).toStrictEqual(["c_imul", "c_shl", "c_shlx", "c_lea"]);

    expect(result[5].name).toStrictEqual(["x2"]);
    expect(result[5].arguments).toStrictEqual(["arg1[8]", "0x2"]);
    expect(result[5].operation).toBe("*");
    expect(result[5].datatype).toBe("u64");
    expect(result[5].decisions.di_choose_arg?.[1]).toStrictEqual(["arg1[8]", "0x2"]);
    expect(result[5].decisions.di_mult_imm?.[1]).toStrictEqual(["c_imul", "c_shl", "c_shlx", "c_lea"]);

    expect(result[6].name).toStrictEqual(["x10001"]);
    // most important test here
    expect(result[6].arguments).toStrictEqual(["arg1[8]", "0x4"]);
    expect(result[6].operation).toBe("*");
    expect(result[6].datatype).toBe("u64");
    expect(result[6].decisions.di_choose_arg?.[1]).toStrictEqual(["arg1[8]", "0x4"]);
    expect(result[6].decisions.di_mult_imm?.[1]).toStrictEqual(["c_imul", "c_shl", "c_shlx", "c_lea"]);
  });
  it("should add descision properties for all operations", () => {
    const result = preprocessFunction(
      Object.assign({}, Object.assign({}, boilerplate), {
        body: [
          {
            // keep this to make sure that they dont end up missing
            name: ["x1"],
            arguments: ["arg1[5]", "0x2"],
            operation: "*",
            datatype: "u64",
          },
          {
            datatype: "u64",
            name: ["x2"],
            operation: "+",
            arguments: ["x1", "0x2"],
          },
          {
            name: ["x3"],
            arguments: ["x2", "2"],
            operation: ">>",
            datatype: "u64",
          },
          createOut("x3"),
        ],
      }),
    ).body;
    expect(result).toHaveLength(4);
    const decs = result.map(({ decisions }) => decisions);
    expect(decs).toHaveLength(4);
    decs.forEach((d) => {
      expect(d).toHaveProperty(DECISION_IDENTIFIER.DI_CHOOSE_ARG);
      expect(d).toHaveProperty(DECISION_IDENTIFIER.DI_SPILL_LOCATION);
      const [choice, alternatives] = d[DECISION_IDENTIFIER.DI_SPILL_LOCATION];
      expect(choice).greaterThanOrEqual(0);
      expect(choice).lessThanOrEqual(1);
      expect(alternatives).toHaveLength(2);
    });
  });
});
