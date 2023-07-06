/**
 * Copyright 2023 University of Adelaide
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
import { transformShl } from "@/bridge/bitcoin-core-bridge/transformations";

describe("bitcoinCoreBridge:transformations", () => {
  describe("transformShl", () => {
    const ssa: SSA = {
      name: ["x72"],
      operation: "shl",
      modifiers: "",
      datatype: "i64",
      arguments: "i64 x70, 5",
    };
    it("should throw if not shl", () => {
      expect(() => transformShl(Object.assign({}, ssa, { operation: "add" }))).toThrow();
    });
    it("should throw if not i64", () => {
      expect(() => transformShl(Object.assign({}, ssa, { datatype: "iu" }))).toThrow();
    });
    it("should not throw if i64 or i128", () => {
      expect(() => transformShl(Object.assign({}, ssa, { datatype: "i128" }))).not.toThrow();
      expect(() =>
        transformShl(Object.assign({}, ssa, { datatype: "i64" /*just to be sure, hehe*/ })),
      ).not.toThrow();
    });
    it("should return << if the amout is >4", () => {
      const inst = transformShl(Object.assign({}, ssa));
      expect(inst.operation).toEqual("<<");
      expect(inst.arguments[1]).toEqual(`0x${Number(ssa.arguments.split(",")[1].trim()).toString(16)}`);
    });
    describe("should return multiply's if the amout is <=4", () => {
      [
        { expectedFactor: 2, ar: "i64 x70, 1" },
        { expectedFactor: 4, ar: "i64 x70, 2" },
        { expectedFactor: 8, ar: "i64 x70, 3" },
        { expectedFactor: 16, ar: "i64 x70, 4" },
      ].forEach(({ ar, expectedFactor }) => {
        it(`shl ${ar}`, () => {
          const inst = transformShl(Object.assign({}, ssa, { arguments: ar }));
          expect(inst).toBeTruthy();
          expect(inst.name).toEqual(ssa.name);
          expect(inst.datatype).toEqual("u64");
          expect(inst.operation).toEqual("*");
          expect(inst.arguments[0]).toEqual("x70");
          expect(inst.arguments[1]).toEqual(`0x${expectedFactor.toString(16)}`);
        });
      });
    });
  });
});
