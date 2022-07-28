/* eslint-disable @typescript-eslint/no-non-null-assertion */
import { describe, expect, it } from "vitest";

import { createDependencyRelation, isADependentOnB, nodeLookupMap } from "@/model";

import { createModelHelpers } from "./test-helpers";

describe("model.helpers", () => {
  const { nodes } = createModelHelpers();
  describe("nodeLookupMap", () => {
    it("should generate the correct lookup map", () => {
      const map = nodeLookupMap(nodes);
      expect(map.get("")).toBe(undefined);
      expect(map.get("_")).toBe(undefined);
      expect(map.get("x1")).toBe(0);
      expect(map.get("x2")).toBe(1);
      expect(map.get("x3")).toBe(2);
      expect(map.get("x100")).toBe(3);
      expect(map.get("x100_0")).toBe(3);
      expect(map.get("x100_1")).toBe(3);
      expect(map.get("x101")).toBe(4);
      expect(map.get("x101_0")).toBe(4);
      expect(map.get("x101_1")).toBe(4);
      expect(map.get("x102")).toBe(5);
      expect(map.get("x102_0")).toBe(5);
      expect(map.get("x102_1")).toBe(5);
      expect(map.get("x4")).toBe(6);
      expect(map.get("x103")).toBe(7);
      expect(map.get("x103_0")).toBe(7);
      expect(map.get("x103_1")).toBe(7);
      expect(map.get("x5")).toBe(8);
      expect(map.get("x6")).toBe(9);
      expect(map.get("x7")).toBe(undefined); // the node is x6,_
      expect(map.get("x8")).toBe(10);
      expect(map.get("x9")).toBe(10);
      expect(map.get("x27")).toBe(11);
      expect(map.get("x28")).toBe(12);
      expect(map.get("x29")).toBe(13);
      expect(map.get("out1[0]")).toBe(14);
      expect(map.get("out1[1]")).toBe(15);
      expect(map.get("out1[2]")).toBe(16);
    });
  });

  describe("createDependencyRelation", () => {
    const map = nodeLookupMap(nodes);
    const { needs, neededBy } = createDependencyRelation(nodes, map);
    it.skip(/*skippeded because needs is not used.*/ "needs", () => {
      expect(needs.get("x1")?.size).toBe(1);
      expect(needs.get("x1")?.has("arg1[0]")).toBe(true);
      // nah ... if arg1[0] is already in a register, no-one cares about arg1
      expect(needs.get("x1")?.has("arg1")).toBe(false);

      expect(needs.get("x2")?.size).toBe(1);
      expect(needs.get("x2")?.has("arg1[1]")).toBe(true);

      expect(needs.get("x3")?.size).toBe(2);
      expect(needs.get("x3")?.has("x1")).toBe(true);
      expect(needs.get("x3")?.has("x2")).toBe(true);

      expect(needs.get("x4")?.size).toBe(2);

      expect(needs.get("x4")?.has("x102_0")).toBe(true);
      expect(needs.get("x4")?.has("x102_1")).toBe(false);
      expect(needs.get("x4")?.has("0xffffffffffffffff")).toBe(false);
    });

    describe("neededBy", () => {
      it("arg1[0]", () => {
        const n = neededBy.get("arg1[0]");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x1")).toBe(true);
      });
      it("arg1[1]", () => {
        const n = neededBy.get("arg1[1]");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x2")).toBe(true);
      });
      it("x1", () => {
        const n = neededBy.get("x1");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(8);
        expect(n!.has("x3")).toBe(true);
        expect(n!.has("x100")).toBe(false);
        expect(n!.has("x100_0")).toBe(true);
        expect(n!.has("x100_1")).toBe(true);
        expect(n!.has("x101")).toBe(false);
        expect(n!.has("x101_0")).toBe(true);
        expect(n!.has("x101_1")).toBe(true);
        expect(n!.has("x6")).toBe(true);
        expect(n!.has("x8")).toBe(true);
        expect(n!.has("x9")).toBe(true);
      });
      it("x2", () => {
        const n = neededBy.get("x2");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(6);
        expect(n!.has("x3")).toBe(true);
        expect(n!.has("x100")).toBe(false);
        expect(n!.has("x100_0")).toBe(true);
        expect(n!.has("x100_1")).toBe(true);
        expect(n!.has("x6")).toBe(true);
        expect(n!.has("x8")).toBe(true);
        expect(n!.has("x9")).toBe(true);
      });
      it("x3", () => {
        const n = neededBy.get("x3");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(2);
        expect(n!.has("x101")).toBe(false);
        expect(n!.has("x101_0")).toBe(true);
        expect(n!.has("x101_1")).toBe(true);
      });
      it("x4", () => {
        const n = neededBy.get("x4");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(3);
        expect(n!.has("x103")).toBe(false);
        expect(n!.has("x103_0")).toBe(true);
        expect(n!.has("x103_1")).toBe(true);
        expect(n!.has("x28")).toBe(true);
      });
      it("x5", () => {
        const n = neededBy.get("x5");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("out1[0]")).toBe(true);
      });
      it("x6", () => {
        const n = neededBy.get("x6");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x29")).toBe(true);
      });
      it("emptystring''", () => {
        const n = neededBy.get("");
        expect(n).toBeFalsy();
      });
      it("_", () => {
        const n = neededBy.get("_");
        expect(n).toBeFalsy();
      });
      it("x7", () => {
        const n = neededBy.get("x7");
        expect(n).toBeFalsy();
      });
      it("x8", () => {
        const n = neededBy.get("x8");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x27")).toBe(true);
      });
      it("x9", () => {
        const n = neededBy.get("x9");
        expect(n!.size).toBe(1);
        expect(n!.has("x29")).toBe(true);
      });
      it("x27", () => {
        const n = neededBy.get("x27");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x28")).toBe(true);
      });
      it("x28", () => {
        const n = neededBy.get("x28");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("out1[1]")).toBe(true);
      });
      it("x29", () => {
        const n = neededBy.get("x29");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("out1[2]")).toBe(true);
      });
      it("x100", () => {
        const n = neededBy.get("x100");
        expect(n).toBeFalsy();
      });
      it("x101", () => {
        const n = neededBy.get("x101");
        expect(n).toBeFalsy();
      });
      it("x102", () => {
        const n = neededBy.get("x102");
        expect(n).toBeFalsy();
      });
      it("x103", () => {
        const n = neededBy.get("x103");
        expect(n).toBeFalsy();
      });
      it("x100_0", () => {
        const n = neededBy.get("x100_0");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(4);
        expect(n!.has("x102")).toBe(false);
        expect(n!.has("x102_0")).toBe(true);
        expect(n!.has("x102_1")).toBe(true);
        expect(n!.has("x103")).toBe(false);
        expect(n!.has("x103_0")).toBe(true);
        expect(n!.has("x103_1")).toBe(true);
      });
      it("x100_1", () => {
        const n = neededBy.get("x100_1");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(2);
        expect(n!.has("x102")).toBe(false);
        expect(n!.has("x103")).toBe(false);

        expect(n!.has("x102_1")).toBe(true);
        expect(n!.has("x103_1")).toBe(true);

        expect(n!.has("x103_0")).toBe(false);
        expect(n!.has("x102_0")).toBe(false);
      });
      it("x101_0", () => {
        const n = neededBy.get("x101_0");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(2);

        expect(n!.has("x102")).toBe(false);
        expect(n!.has("x102_0")).toBe(true);
        expect(n!.has("x102_1")).toBe(true); //lwd
      });
      it("x101_1", () => {
        const n = neededBy.get("x101_1");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x102")).toBe(false);
        expect(n!.has("x102_0")).toBe(false); //lwd
        expect(n!.has("x102_1")).toBe(true); //lwd
      });
      it("x102_0", () => {
        const n = neededBy.get("x102_0");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x4")).toBe(true);
      });
      it("x102_1", () => {
        const n = neededBy.get("x102_1");
        expect(n).toBeFalsy(); // lwd
      });
      it("x103_0", () => {
        const n = neededBy.get("x103_0");
        expect(n).toBeFalsy(); // lwd
      });
      it("x103_1", () => {
        const n = neededBy.get("x103_1");
        expect(n).toBeTruthy();
        expect(n!.size).toBe(1);
        expect(n!.has("x5")).toBe(true);
      });
    });
    describe("node Dependence: 'isADependentOnB'", () => {
      it("is x1 dependent on x2", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x1");
        const b = nodes.findIndex((n) => n.name[0] === "x2");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(false);
      });
      it("is x3 dependent on x2", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x3");
        const b = nodes.findIndex((n) => n.name[0] === "x2");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(true);
      });
      it("is x3 dependent on x1", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x3");
        const b = nodes.findIndex((n) => n.name[0] === "x1");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(true);
      });
      it("is x2 dependent on x3", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x2");
        const b = nodes.findIndex((n) => n.name[0] === "x3");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(false);
      });
      it("is x1 dependent on x100", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x1");
        const b = nodes.findIndex((n) => n.name[0] === "x100");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(false);
      });
      it("is x100 dependent on x1", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x100");
        const b = nodes.findIndex((n) => n.name[0] === "x1");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(true);
      });
      it("is anything dependent on out1[0]", () => {
        const b = nodes.findIndex((n) => n.name[0] === "out1[0]");
        nodes.forEach((n, i) => {
          if (n.name[0] === "out1[0]") return;
          expect(isADependentOnB(i, b, nodes, neededBy)).toBe(false);
        });
      });
      it("is x100 dependent on x2", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x100");
        const b = nodes.findIndex((n) => n.name[0] === "x2");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(true);
      });
      it("is x100 dependent on x3", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x100");
        const b = nodes.findIndex((n) => n.name[0] === "x3");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(false);
      });
      it("is x4 dependent on 0xffffffffffffffff, ... not really supported, cuz imms are not nodes", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x4");
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const b = nodes.findIndex((n) => n.name[0] === ("0xffffffffffffffff" as any));
        expect(b).toBe(-1);
        expect(() => isADependentOnB(a, b, nodes, neededBy)).toThrow();
      });
      it("is x100_1 dependent (shall error cuz x100_1 is no node)", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x100_1"); // a shall be undefined
        expect(a).toBe(-1);
        const b = nodes.findIndex((n) => n.name[0] === "x3");
        expect(() => isADependentOnB(a, b, nodes, neededBy)).toThrow();
      });
      it("error if NaNs are provided", () => {
        expect(() => isADependentOnB(Number.NaN, Number.NaN, nodes, neededBy)).toThrow();
      });
      it("is x27 dependent on x8", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x27");
        const b = nodes.findIndex((n) => n.name[0] === "x8");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(true);
      });
      it("is x8 dependent on x27", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x8");
        const b = nodes.findIndex((n) => n.name[0] === "x27");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(false);
      });
      it("is x28 dependent on x27", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x28");
        const b = nodes.findIndex((n) => n.name[0] === "x27");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(true);
      });
      it("is x27 dependent on x28", () => {
        const a = nodes.findIndex((n) => n.name[0] === "x27");
        const b = nodes.findIndex((n) => n.name[0] === "x28");
        expect(isADependentOnB(a, b, nodes, neededBy)).toBe(false);
      });
    });
  });
});
