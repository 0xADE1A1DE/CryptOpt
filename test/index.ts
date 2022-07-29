import type { SpyInstance } from "vitest";
import { afterAll, beforeAll, describe, expect, it, vi } from "vitest";

import { Optimizer } from "@/optimizer";

const args: {
  evals: number;
  seed: number;
  curve: string;
  method: string;
  cyclegoal: number;
  readState?: string; // filename
  logComment: string;
  skipProof: boolean;
  verbose: boolean;
  bridge?: string;
} = {
  evals: 1,
  seed: 1,
  curve: "",
  method: "",
  cyclegoal: 100,
  logComment: "",
  verbose: false,
  skipProof: true,
};

describe("full tests fiat", () => {
  let mockLog: SpyInstance;
  let mockErr: SpyInstance;
  beforeAll(() => {
    const dofkall = (_msg: string) => {
      /*intentionally empty*/
    };
    mockLog = vi.spyOn(console, "log").mockImplementation(dofkall);
    mockErr = vi.spyOn(console, "error").mockImplementation(dofkall);
  });
  afterAll(() => {
    mockLog.mockRestore();
    mockErr.mockRestore();
  });
  it("shoud error", () => {
    expect(() => {
      throw new Error("n");
    }).toThrow();
  });

  it("should only throw on invalid curves.", () => {
    expect(() => {
      new Optimizer(Object.assign({}, args, { curve: "curve25519", method: "square" }));
    }).not.toThrow();

    expect(() => {
      new Optimizer(Object.assign({}, args, { curve: "INVALIDCURVE", method: "square" }));
    }).toThrow(/Cannot destructure property 'binary' of '.*' as it is undefined./);
  });

  afterAll(() => {
    vi.useRealTimers();
  });
});
