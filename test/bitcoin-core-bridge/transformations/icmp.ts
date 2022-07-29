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

import { SSA } from "@/bridge/bitcoin-core-bridge/raw.type";
import { transformIcmp } from "@/bridge/bitcoin-core-bridge/transformations";

describe("bitcoinCoreBridge:transformations", () => {
  it("transformICMP:ult VAR/vAr", () => {
    const ssa: SSA = {
      name: ["x18"],
      operation: "icmp",
      modifiers: "ult ",
      datatype: "i64",
      arguments: "i64 x17, x16",
    };
    const result = transformIcmp(ssa);
    expect(result.name[0]).toBe(ssa.name[0]);
    expect(result.operation).toBe("cmp");
    expect(result.datatype).toBe("i1");
    expect(result.arguments).toHaveLength(3);
    expect(result.arguments[0]).toBe("ult");
    expect(result.arguments[1]).toBe("x17");
    expect(result.arguments[2]).toBe("x16");
  });
  it("transformICMP:ult VAR/imm", () => {
    const ssa: SSA = {
      name: ["x258"],
      operation: "icmp",
      modifiers: "ult ",
      datatype: "i64",
      arguments: "i64 x249, -2",
    };
    const result = transformIcmp(ssa);
    expect(result.name[0]).toBe(ssa.name[0]);
    expect(result.operation).toBe("cmp");
    expect(result.datatype).toBe("i1");
    expect(result.arguments).toHaveLength(3);
    expect(result.arguments[0]).toBe("ult");
    expect(result.arguments[1]).toBe("x249");
    expect(result.arguments[2]).toBe("-0x2");
  });

  it("transformICMP:ne VAR/imm", () => {
    const ssa: SSA = {
      name: ["x257"],
      operation: "icmp",
      modifiers: "ne ",
      datatype: "i64",
      arguments: "i64 x254, -1",
    };
    const result = transformIcmp(ssa);
    expect(result.name[0]).toBe(ssa.name[0]);
    expect(result.operation).toBe("cmp");
    expect(result.datatype).toBe("i1");
    expect(result.arguments).toHaveLength(3);
    expect(result.arguments[0]).toBe("ne");
    expect(result.arguments[1]).toBe("x254");
    expect(result.arguments[2]).toBe("-0x1");
  });
  it("transformICMP:eq VAR/imm", () => {
    const ssa: SSA = {
      name: ["x261"],
      operation: "icmp",
      modifiers: "eq ",
      datatype: "i64",
      arguments: "i64 x249, -1",
    };
    const result = transformIcmp(ssa);
    expect(result.name[0]).toBe(ssa.name[0]);
    expect(result.operation).toBe("cmp");
    expect(result.datatype).toBe("i1");
    expect(result.arguments).toHaveLength(3);
    expect(result.arguments[0]).toBe("eq");
    expect(result.arguments[1]).toBe("x249");
    expect(result.arguments[2]).toBe("-0x1");
  });
  it("transformICMP:ult VAR/-imm", () => {
    const ssa: SSA = {
      name: ["x265"],
      operation: "icmp",
      modifiers: "ult ",
      datatype: "i64",
      arguments: "i64 x243, -4994812053365940165",
    };
    const result = transformIcmp(ssa);
    expect(result.name[0]).toBe(ssa.name[0]);
    expect(result.operation).toBe("cmp");
    expect(result.datatype).toBe("i1");
    expect(result.arguments).toHaveLength(3);
    expect(result.arguments[0]).toBe("ult");
    expect(result.arguments[1]).toBe("x243");
    expect(result.arguments[2]).toBe("-0x4551231950b75fc5");
  });
  it("transformICMP:ugt VAR/-imm", () => {
    const ssa: SSA = {
      name: ["x268"],
      operation: "icmp",
      modifiers: "ugt ",
      datatype: "i64",
      arguments: "i64 x243, -4994812053365940165",
    };
    const result = transformIcmp(ssa);
    expect(result.name[0]).toBe(ssa.name[0]);
    expect(result.operation).toBe("cmp");
    expect(result.datatype).toBe("i1");
    expect(result.arguments).toHaveLength(3);
    expect(result.arguments[0]).toBe("ugt");
    expect(result.arguments[1]).toBe("x243");
    expect(result.arguments[2]).toBe("-0x4551231950b75fc5");
  });
});
