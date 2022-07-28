import { describe, expect, it, vi } from "vitest";

import { BitcoinCoreBridge } from "@/bridge/bitcoin-core-bridge";

describe("bridge", () => {
  describe("bridge:getCryptOptFunction", () => {
    it("should only have very node once", () => {
      const b = new BitcoinCoreBridge().getCryptOptFunction("reduce").body;
      const set = new Set(b.map((n) => n.name[0]));
      expect(b).toHaveLength(set.size);
    });
  });
});
