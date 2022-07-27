import { rm } from "fs";

import { Optimizer } from "@/optimizer";

import { getTestArgs, getTestResultsPath, nothing } from "../test-helpers";

const mockLog = jest.spyOn(console, "log").mockImplementation(nothing);
const mockErr = jest.spyOn(console, "error").mockImplementation(nothing);
let spyExit: jest.SpyInstance;
jest.useFakeTimers();
let resultpath = "";

it("optimise", (done) => {
  spyExit = jest.spyOn(process, "exit").mockImplementation(((nu: number) => {
    expect(nu).toEqual(0);
    expect(mockErr).not.toHaveBeenCalled();
    done();
  }) as any);
  const args = getTestArgs(__filename);
  args.bridge = "bitcoin-core";
  resultpath = getTestResultsPath();
  const opt = new Optimizer(args);

  try {
    expect(() => opt.optimise()).not.toThrow();
    jest.runAllTimers();
  } catch (e) {
    mockErr.mockRestore();
    console.error(e);
    done(e);
  }
});

afterAll(() => {
  rm(resultpath, { recursive: true, force: true }, () => {
    /* intentionally empty */
  });
  mockLog.mockRestore();
  mockErr.mockRestore();
  spyExit.mockRestore();
  jest.useRealTimers();
});
