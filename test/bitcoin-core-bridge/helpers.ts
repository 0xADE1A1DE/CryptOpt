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

/* eslint-disable @typescript-eslint/no-explicit-any */
import { describe, expect, it } from "vitest";

import { getArguments, getScalarsAndImmMappedAsConstArg } from "@/bridge/bitcoin-core-bridge/helpers";

describe("bitcoinCoreBridge:helpers", () => {
  describe("getArguments", () => {
    it("ptr (load)", () => {
      const a = getArguments("i64, i64* x1, align 8, !tbaa !5");
      expect(a.scalars).toHaveLength(0);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(0);

      expect(a.pointers).toContainEqual({ type: "i64*", id: "x1" });
    });

    it("scalar + type =>cast (zext)", () => {
      const a = getArguments("i64 x4 to i128");
      expect(a.scalars).toHaveLength(1);
      expect(a.casts).toHaveLength(1);
      expect(a.pointers).toHaveLength(0);
      expect(a.imm).toHaveLength(0);

      expect(a.scalars).toContainEqual({ type: "i64", id: "x4" });
      expect(a.casts).toContainEqual({ type: "i128" });
    });

    it("ptr + scalar (store)", () => {
      const a = getArguments("i64* x0, i64 x79");
      expect(a.scalars).toHaveLength(1);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(0);

      expect(a.scalars).toContainEqual({ type: "i64", id: "x79" });
      expect(a.pointers).toContainEqual({ type: "i64*", id: "x0" });
    });

    it("scalars + imm (lshr)", () => {
      const a = getArguments("i128 x78, 52");
      expect(a.scalars).toHaveLength(1);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(0);
      expect(a.imm).toHaveLength(1);

      expect(a.scalars).toContainEqual({ type: "i128", id: "x78" });
      expect(a.imm).toContainEqual({ type: undefined, imm: "52" });
    });

    it("2 scalars + (add)", () => {
      const a = getArguments("i128 x106, x94");
      expect(a.scalars).toHaveLength(2);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(0);
      expect(a.imm).toHaveLength(0);

      expect(a.scalars).toContainEqual({ type: "i128", id: "x106" });
      expect(a.scalars).toContainEqual({ type: undefined, id: "x94" });
    });

    it("ptr + imm (getelementptr)", () => {
      const a = getArguments("i64, i64* x1, i64 3");
      expect(a.scalars).toHaveLength(0);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(1);

      expect(a.pointers).toContainEqual({ type: "i64*", id: "x1" });
      expect(a.imm).toContainEqual({ type: "i64", imm: "3" });
    });
    it("ptr + imm (getelementptr) 'ptr'", () => {
      const a = getArguments("i64, ptr x1, i64 3");
      expect(a.scalars).toHaveLength(0);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(1);

      expect(a.pointers).toContainEqual({ type: "i64*", id: "x1" });
      expect(a.imm).toContainEqual({ type: "i64", imm: "3" });
    });
  });
  describe("getScalarsAndImmMappedAsConstArg", () => {
    it("should... you know... convert numbers to correct numers, as.. you know.. one would expect", () => {
      const s = "i128 x112, 281475040739328";

      const r = getScalarsAndImmMappedAsConstArg(s);
      expect(r).toHaveLength(2);
      expect(r[0]).toBe("x112");
      expect(r[1]).toBe("0x1000003d10000");
    });
    it("Mimimi -  almost 64 1's", () => {
      const s = "i128 x20, 18446744073709551614";

      const r = getScalarsAndImmMappedAsConstArg(s);
      expect(r).toHaveLength(2);
      expect(r[0]).toBe("x20");
      expect(r[1]).toBe("0xfffffffffffffffe");
    });
    it("neg imm", () => {
      const s = "i64 x243, -4994812053365940165";

      const r = getScalarsAndImmMappedAsConstArg(s);
      expect(r).toHaveLength(2);
      expect(r[0]).toBe("x243");
      expect(r[1]).toBe("-0x4551231950b75fc5");
    });
  });
});
