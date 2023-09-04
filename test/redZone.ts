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

import { basename } from "path";
import { afterAll, expect, it, describe, vi } from "vitest";
import { readFileSync, readdirSync, existsSync } from "fs";
import { resolve as pathResolve } from "path";

import { Optimizer } from "@/optimizer";

import { getTestArgs, nothing } from "./test-helpers";

const mockLog = vi.spyOn(console, "log").mockImplementation(nothing);
const mockErr = vi.spyOn(console, "error").mockImplementation(nothing);

vi.useFakeTimers();

describe("check usage of redzone", () => {
  it("redzone (default); use redzone, i.e. start starts at [rsp - 0x80]", () => {
    return new Promise((resolve, reject) => {
      const filename = basename("p434-mul.ts"); // just to have a long function
      const args = getTestArgs(filename);
      args.redzone = true;
      args.resultDir = pathResolve(args.resultDir, `${Date.now().toString()}-${args.redzone}`);
      const opt = new Optimizer(args);

      try {
        expect(() =>
          opt.optimise().then((code) => {
            expect(code).toEqual(0);
            expect(existsSync(args.resultDir)).toBe(true);
            const resultDir = pathResolve(args.resultDir, "fiat", "fiat_p434_mul");

            const asmlinesWithRsp = readdirSync(resultDir)
              .filter((filename) => filename.endsWith(".asm"))
              .flatMap((filename) => readFileSync(pathResolve(resultDir, filename)).toString().split("\n"))
              .filter((line) => line.includes("rsp"));

            expect(asmlinesWithRsp.length).toBeGreaterThan(0);
            expect(
              asmlinesWithRsp.filter((instr) =>
                instr.includes("mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem"),
              ),
            ).toHaveLength(1);
            expect(
              asmlinesWithRsp.filter((instr) =>
                instr.includes("mov [ rsp + 0x0 ], rbx; spilling calSv-rbx to mem"),
              ),
            ).toHaveLength(0);

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
  it("no-redzone", () => {
    return new Promise((resolve, reject) => {
      const filename = basename("p434-mul.ts"); // just to have a long function
      const args = getTestArgs(filename);
      args.redzone = false;
      args.resultDir = pathResolve(args.resultDir, `${Date.now().toString()}-${args.redzone}`);
      const opt = new Optimizer(args);

      try {
        expect(() =>
          opt.optimise().then((code) => {
            expect(code).toEqual(0);
            expect(existsSync(args.resultDir)).toBe(true);
            const resultDir = pathResolve(args.resultDir, "fiat", "fiat_p434_mul");

            const asmlinesWithRsp = readdirSync(resultDir)
              .filter((filename) => filename.endsWith(".asm"))
              .flatMap((filename) => readFileSync(pathResolve(resultDir, filename)).toString().split("\n"))
              .filter((line) => line.includes("rsp"));

            expect(asmlinesWithRsp.length).toBeGreaterThan(0);
            expect(
              asmlinesWithRsp.filter((instr) =>
                instr.includes("mov [ rsp - 0x80 ], rbx; spilling calSv-rbx to mem"),
              ),
            ).toHaveLength(0);
            expect(
              asmlinesWithRsp.filter((instr) =>
                instr.includes("mov [ rsp + 0x0 ], rbx; spilling calSv-rbx to mem"),
              ),
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
});

afterAll(() => {
  mockLog.mockRestore();
  mockErr.mockRestore();
  vi.useRealTimers();
});
