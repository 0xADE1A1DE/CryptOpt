import { Optimiser } from "@/optimizer";

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
      new Optimiser(Object.assign({}, args, { curve: "curve25519", method: "square" }));
    }).not.toThrow();

    expect(() => {
      new Optimiser(Object.assign({}, args, { curve: "INVALIDCURVE", method: "square" }));
    }).toThrow(/Cannot destructure property 'binary' of '.*' as it is undefined./);
  });

  afterAll(() => {
    jest.useRealTimers();
  });
});
