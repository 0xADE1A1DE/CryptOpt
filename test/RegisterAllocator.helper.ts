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

import { populateClobbers } from "@/registerAllocator";
import type { AllocationReq } from "@/types";

describe("RegisterAllocator.helper", () => {
  describe("RegisterAllocator.helper:populateClobbers", () => {
    it("should add everything from the allocationreq to the provided array", () => {
      const req: AllocationReq = {
        in: ["x1", "x2_0", "x2_4", "0xDEADBEEF", "0x10000000000000000"],
        oReg: ["x10", "x11_0", "x12_1"],
      };
      const clob = new Set<string>();
      populateClobbers(clob, req);
      expect(clob.size).toBeGreaterThan(req.in.length + req.oReg.length + 1);
      expect(clob).toContainEqual("x1");
      expect(clob).toContainEqual("x2");
      expect(clob).toContainEqual("x2_0");
      expect(clob).toContainEqual("x2_4");
      expect(clob).toContainEqual("0x10000000000000000");
      expect(clob).toContainEqual("0x1");
      expect(clob).toContainEqual("0x0000000000000000");
      expect(clob).toContainEqual("0xDEADBEEF");

      expect(clob).toContainEqual("x10");
      expect(clob).toContainEqual("x10_0");
      expect(clob).toContainEqual("x11_0");
      expect(clob).toContainEqual("x12");
      expect(clob).toContainEqual("x12_1");
    });
  });
});
