import { jest } from "@jest/globals";
import { rm } from "fs";
import { basename } from "path";

import { Optimizer } from "@/optimizer";

import { getTestArgs, getTestResultsPath, nothing } from "../test-helpers";

const mockLog = jest.spyOn(console, "log").mockImplementation(nothing);
const mockErr = jest.spyOn(console, "error").mockImplementation(nothing);

jest.useFakeTimers();
let resultpath = "";

it("optimise", (done) => {
  const filename = basename(import.meta.url);
  const args = getTestArgs(filename);
  args.bridge = "bitcoin-core";
  resultpath = getTestResultsPath();
  const opt = new Optimizer(args);

  try {
    expect(() =>
      opt.optimise().then((code) => {
        expect(code).toEqual(0);
        expect(mockErr).not.toHaveBeenCalled();
        done();
      }),
    ).not.toThrow();
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
  jest.useRealTimers();
});
