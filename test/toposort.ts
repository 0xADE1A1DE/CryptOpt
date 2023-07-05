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

import { BitcoinCoreBridge } from "@/bridge/bitcoin-core-bridge";
import { matchXD, toposort, isADependentOnB } from "@/helper";

import { createModelHelpers } from "./test-helpers";
import { fiat_curve25519_carry_square } from "./toposort-helper";
import { createDependencyRelation, nodeLookupMap } from "@/model";

describe("toposort", () => {
  describe("general", () => {
    const { nodes } = createModelHelpers();
    const map = nodeLookupMap(nodes);
    const neededBy = createDependencyRelation(nodes, map);
    const order = toposort(nodes, neededBy);
    it("should emit valid numbers", () => {
      // actual numbers
      order.every((i) => {
        expect(typeof i).toBe("number");
        expect(isNaN(i)).toBe(false);
      });
      // should emit enough nubers
      expect(order).toHaveLength(nodes.length);
      // no duplicates
      expect(order).toHaveLength(new Set(order).size);
    });
    it("should schedule x27 before x28", () => {
      const idx_28 = nodes.findIndex((n) => n.name[0] == "x28");
      const idx_27 = nodes.findIndex((n) => n.name[0] == "x27");
      expect(idx_27).toBeGreaterThanOrEqual(0);
      expect(idx_28).toBeGreaterThanOrEqual(0);

      const scheduled_x27 = order.indexOf(idx_27);
      const scheduled_x28 = order.indexOf(idx_28);
      expect(scheduled_x27).toBeGreaterThanOrEqual(0);
      expect(scheduled_x28).toBeGreaterThanOrEqual(0);

      expect(scheduled_x28).toBeGreaterThan(scheduled_x27);
    });
  });
  describe("curve25519 u128 invalid order prevention", () => {
    const f = fiat_curve25519_carry_square;
    const nodes = f.body;

    const map = nodeLookupMap(nodes);
    const neededBy = createDependencyRelation(nodes, map);
    const order = toposort(nodes, neededBy);

    const node_0 = nodes[order[0]];
    const node_N = nodes[order[order.length - 1]];

    it("should not schedule any node with xNN in the args as first element ", () => {
      expect(node_0.arguments.some((a) => matchXD(a))).toBe(false);
    });
    it("must schedule an out1 as the last node", () => {
      node_N.name.forEach((a) => expect(a.startsWith("out1")).toBe(true));
    });
  });

  it("should throw for  secp256k1-reduce", () => {
    expect(() => new BitcoinCoreBridge().getCryptOptFunction("reduce")).toThrow();
  });
  describe("node Dependence: 'isADependentOnB'", () => {
    const { nodes } = createModelHelpers();
    const map = nodeLookupMap(nodes);
    const neededBy = createDependencyRelation(nodes, map);
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

  // removed because reduce is disabled for now
  // describe("should make correct order for secp256k1-reduce", () => {
  //   const f = new BitcoinCoreBridge().getCryptOptFunction("reduce");
  //   const nodes = f.body;
  //
  //   const order = toposort(nodes);
  //
  //   const node_0 = nodes[order[0]];
  //   const node_N = nodes[order[order.length - 1]];
  //
  //   it("should not schedule any node with xNN in the args as first element ", () => {
  //     expect(node_0.arguments.some((a) => matchXD(a))).toBe(false);
  //   });
  //   it("must schedule an out1 as the last node", () => {
  //     node_N.name.forEach((a) => expect(a.startsWith("out1")).toBe(true));
  //   });
  // });
});
