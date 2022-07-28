import { describe, expect, it, vi } from "vitest";

import { BitcoinCoreBridge } from "@/bridge/bitcoin-core-bridge";
import { matchXD, toposort } from "@/helper";

import { createModelHelpers } from "./test-helpers";
import { fiat_curve25519_carry_square } from "./toposort_helper";

describe("toposort", () => {
  describe("general", () => {
    const { nodes } = createModelHelpers();
    const order = toposort(nodes);
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

    const order = toposort(nodes);

    const node_0 = nodes[order[0]];
    const node_N = nodes[order[order.length - 1]];

    it("should not schedule any node with xNN in the args as first element ", () => {
      expect(node_0.arguments.some((a) => matchXD(a))).toBe(false);
    });
    it("must schedule an out1 as the last node", () => {
      node_N.name.forEach((a) => expect(a.startsWith("out1")).toBe(true));
    });
  });
  describe("should make correct order for secp256k1-reduce", () => {
    const f = new BitcoinCoreBridge().getCryptOptFunction("reduce");
    const nodes = f.body;

    const order = toposort(nodes);

    const node_0 = nodes[order[0]];
    const node_N = nodes[order[order.length - 1]];

    it("should not schedule any node with xNN in the args as first element ", () => {
      expect(node_0.arguments.some((a) => matchXD(a))).toBe(false);
    });
    it("must schedule an out1 as the last node", () => {
      node_N.name.forEach((a) => expect(a.startsWith("out1")).toBe(true));
    });
  });
});
