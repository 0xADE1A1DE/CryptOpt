import { rm } from "fs";

import { Optimizer } from "@/optimizer";

import { getTestArgs, getTestResultsPath, nothing } from "../test-helpers";

const mockLog = jest.spyOn(console, "log").mockImplementation(nothing);
const mockErr = jest.spyOn(console, "error").mockImplementation(nothing);
const mockDbg = jest.spyOn(console, "debug").mockImplementation(nothing); // executing bla to generate machinecode...
let spyExit: jest.SpyInstance;
jest.useFakeTimers();
let resultpath = "";

it("optimise", (done) => {
  spyExit = jest.spyOn(process, "exit").mockImplementation(((nu: number) => {
    expect(nu).toEqual(0);
    expect(mockErr).not.toHaveBeenCalled();
    done();
  }) as any);
  resultpath = getTestResultsPath();
  new Optimizer(getTestArgs(__filename)).optimise();
  jest.runAllTimers();
});
afterAll(() => {
  rm(resultpath, { recursive: true, force: true }, () => { });
  mockLog.mockRestore();
  mockErr.mockRestore();
  mockDbg.mockRestore();
  spyExit.mockRestore();
  jest.useRealTimers();
});
