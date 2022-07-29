import { describe, expect, it } from "vitest";

import { parsedArgs } from "@/helper";

describe("default argParse", () => {
  const defaultArgs = {
    curve: "curve25519",
    method: "square",
    bridge: "",
    jsonFile: "",
    cFile: "",
    verbose: false,
    bets: 10,
    betRatio: 0.2,
    single: false,
    proof: true,
    logComment: "---",
    cyclegoal: 10000,
    evals: 10000,
  };
  Object.entries(defaultArgs).forEach(([key, value]) => {
    it("should have correct defaults", () => {
      expect(parsedArgs).toHaveProperty(key);
      expect(parsedArgs[key]).toBe(value);
    });
  });
});
