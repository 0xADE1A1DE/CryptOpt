import { Optimiser } from "../optimiser.class";
import { getTestResultsPath } from "./test-helpers";
import type { Append } from "@/types";

const args: {
  evals: number;
  seed: number;
  curve: string;
  method: string;
  cyclegoal: number;
  readState?: string; // filename
  logComment: string;
  skipMix: boolean;
  skipProof: boolean;
  silent: boolean;
  bridge?: string;
  append: Append;
} = {
  evals: 1,
  seed: 1,
  curve: "",
  method: "",
  cyclegoal: 100,
  logComment: "",
  skipMix: false,
  silent: false,
  skipProof: true,
  append: "",
};

describe("full tests fiat", () => {
  let mockLog: jest.SpyInstance;
  let mockErr: jest.SpyInstance;
  beforeAll(() => {
    const dofkall = (_msg: string) => {
      /*intentionally empty*/
    };
    mockLog = jest.spyOn(console, "log").mockImplementation(dofkall);
    mockErr = jest.spyOn(console, "error").mockImplementation(dofkall);
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
      new Optimiser(getTestResultsPath(), Object.assign({}, args, { curve: "curve25519", method: "square" }));
    }).not.toThrow();

    expect(() => {
      new Optimiser(
        getTestResultsPath(),
        Object.assign({}, args, { curve: "INVALIDCURVE", method: "square" }),
      );
    }).toThrow(
      `Cannot destructure property 'binary' of 'constants_1.CURVE_DETAILS[curve]' as it is undefined.`,
    );
  });

  afterAll(() => {
    jest.useRealTimers();
  });
});
