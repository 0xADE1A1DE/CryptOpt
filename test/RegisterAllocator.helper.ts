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
