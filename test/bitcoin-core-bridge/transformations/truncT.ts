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
import { transformTrunc } from "@/bridge/bitcoin-core-bridge/transformations";

describe("bitcoinCoreBridge:transformations", () => {
  describe("transformTrunc", () => {
    const ssa: SSA = {
      name: ["x127"],
      operation: "trunc",
      modifiers: "",
      datatype: "i128",
      arguments: "i128 x126 to i64",
    };
    it("should throw if not trunc+i128", () => {
      expect(() => transformTrunc(Object.assign({}, ssa, { operation: "add" }))).toThrow();
      expect(() => transformTrunc(Object.assign({}, ssa, { datatype: "i64" }))).toThrow();
    });
    it("should throw if the cast is not 'to i64'", () => {
      expect(() => transformTrunc(Object.assign({}, ssa, { arguments: "i128 x126 to i128" }))).toThrow();
    });
    it("should return a u64-limb0 with the scalar as arg", () => {
      const inst = transformTrunc(ssa);
      expect(inst).toBeTruthy();
      expect(inst.name).toEqual(ssa.name);
      expect(inst.datatype).toEqual("u64");
      expect(inst.operation).toEqual("limb");
      expect(inst.arguments[0]).toEqual("x126");
      expect(inst.arguments[1]).toEqual("0");
    });
  });
});
