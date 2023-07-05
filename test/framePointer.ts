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

import { existsSync, readdirSync, readFileSync } from "fs";
import { basename, resolve as pathResolve } from "path";
import { afterAll, describe, expect, it, vi } from "vitest";

import { Optimizer } from "@/optimizer";

import { getTestArgs, nothing } from "./test-helpers";

const mockLog = vi.spyOn(console, "log").mockImplementation(nothing);
const mockErr = vi.spyOn(console, "error").mockImplementation(nothing);

vi.useFakeTimers();

describe("check usage of rbp (framepointer)", () => {
  it("omit (default); specify framePointer=omit", () => {
    return new Promise((resolve, reject) => {
      const filename = basename("p434-mul.ts"); // just to have a long function
      const args = getTestArgs(filename);
      args.framePointer = "omit";
      args.resultDir = pathResolve(args.resultDir, `${Date.now().toString()}-${args.framePointer}`);
      const opt = new Optimizer(args);

      try {
        expect(() =>
          opt.optimise().then((code) => {
            expect(code).toEqual(0);
            expect(existsSync(args.resultDir)).toBe(true);
            const resultDir = pathResolve(args.resultDir, "fiat", "fiat_p434_mul");

            const asmlinesWithRbp = readdirSync(resultDir)
              .filter((filename) => filename.endsWith(".asm"))
              .flatMap((filename) => readFileSync(pathResolve(resultDir, filename)).toString().split("\n"))
              .filter((line) => line.includes("rbp"));

            expect(asmlinesWithRbp.length).toBeGreaterThan(0);
            expect(
              asmlinesWithRbp.filter((instr) => instr.includes(", rbp; spilling calSv-rbp to mem")),
            ).toHaveLength(1);

            resolve(0);
          }),
        ).not.toThrow();
        vi.runAllTimers();
      } catch (e) {
        console.error(e);
        reject(e);
      }
    });
  });
  it("default (omit); dont specify, and default to omit", () => {
    return new Promise((resolve, reject) => {
      const filename = basename("p434-mul.ts"); // just to have a long function
      const args = getTestArgs(filename);
      args.resultDir = pathResolve(args.resultDir, `${Date.now().toString()}-default`);
      const opt = new Optimizer(args);

      try {
        expect(() =>
          opt.optimise().then((code) => {
            expect(code).toEqual(0);
            expect(existsSync(args.resultDir)).toBe(true);
            const resultDir = pathResolve(args.resultDir, "fiat", "fiat_p434_mul");

            const asmlinesWithRbp = readdirSync(resultDir)
              .filter((filename) => filename.endsWith(".asm"))
              .flatMap((filename) => readFileSync(pathResolve(resultDir, filename)).toString().split("\n"))
              .filter((line) => line.includes("rbp"));

            expect(asmlinesWithRbp.length).toBeGreaterThan(0);
            expect(
              asmlinesWithRbp.filter((instr) => instr.includes(", rbp; spilling calSv-rbp to mem")),
            ).toHaveLength(1);

            resolve(0);
          }),
        ).not.toThrow();
        vi.runAllTimers();
      } catch (e) {
        console.error(e);
        reject(e);
      }
    });
  });
  it("const ; dont specify, and default to omit", () => {
    return new Promise((resolve, reject) => {
      const filename = basename("p434-mul.ts"); // just to have a long function
      const args = getTestArgs(filename);
      args.framePointer = "constant";
      args.resultDir = pathResolve(args.resultDir, `${Date.now().toString()}-${args.framePointer}`);
      const opt = new Optimizer(args);

      try {
        expect(() =>
          opt.optimise().then((code) => {
            expect(code).toEqual(0);
            expect(existsSync(args.resultDir)).toBe(true);
            const resultDir = pathResolve(args.resultDir, "fiat", "fiat_p434_mul");

            const asmlinesWithRbp = readdirSync(resultDir)
              .filter((filename) => filename.endsWith(".asm"))
              .flatMap((filename) => readFileSync(pathResolve(resultDir, filename)).toString().split("\n"))
              .filter((line) => line.includes("rbp"));

            expect(asmlinesWithRbp.length).toBe(0);

            resolve(0);
          }),
        ).not.toThrow();
        vi.runAllTimers();
      } catch (e) {
        console.error(e);
        reject(e);
      }
    });
  });
  it("save; save rbp to stack, save rsp to rbp", () => {
    return new Promise((resolve, reject) => {
      const filename = basename("p434-mul.ts"); // just to have a long function
      const args = getTestArgs(filename);
      args.framePointer = "save";
      args.resultDir = pathResolve(args.resultDir, `${Date.now().toString()}-${args.framePointer}`);
      const opt = new Optimizer(args);

      try {
        expect(() =>
          opt.optimise().then((code) => {
            expect(code).toEqual(0);
            expect(existsSync(args.resultDir)).toBe(true);
            const resultDir = pathResolve(args.resultDir, "fiat", "fiat_p434_mul");

            const asmlinesWithRbp = readdirSync(resultDir)
              .filter((filename) => filename.endsWith(".asm"))
              .flatMap((filename) => readFileSync(pathResolve(resultDir, filename)).toString().split("\n"))
              .filter((line) => !(line.startsWith(".") || line.startsWith(";")))
              .filter((line) => line.includes("rbp"));
            expect(asmlinesWithRbp).toHaveLength(3);

            expect(asmlinesWithRbp[0]).toBe("push rbp");
            expect(asmlinesWithRbp[1]).toBe("mov rbp, rsp");
            expect(asmlinesWithRbp).toContain("pop rbp");

            resolve(0);
          }),
        ).not.toThrow();
        vi.runAllTimers();
      } catch (e) {
        console.error(e);
        reject(e);
      }
    });
  });
});

afterAll(() => {
  mockLog.mockRestore();
  mockErr.mockRestore();
  vi.useRealTimers();
});
