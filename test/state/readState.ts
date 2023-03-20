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

import { readFileSync } from "fs";
import { dirname, resolve as pathResolve } from "path";
import { fileURLToPath } from "url";
import { afterAll, expect, it, vi } from "vitest";

import { Optimizer } from "@/optimizer";

import { getTestResultsPath, nothing } from "../test-helpers";

const mockLog = vi.spyOn(console, "log").mockImplementation(nothing);
const mockErr = vi.spyOn(console, "error").mockImplementation(nothing);

vi.useFakeTimers();

it("optimise", () => {
  return new Promise((resolve, reject) => {
    const dir = dirname(fileURLToPath(import.meta.url));

    // Commented out, because currently mul2 not supported
    // const statefile = pathResolve(dir, "./seed0000000688561254.json");

    const statefile = pathResolve(dir, "./seed4435557851432120.json");
    const args = JSON.parse(readFileSync(statefile).toString()).parsedArgs;
    args.resultDir = getTestResultsPath();
    args.readState = statefile;
    expect(args).toBeTruthy();
    const opt = new Optimizer(args);

    try {
      expect(() =>
        opt.optimise().then((code) => {
          expect(code).toEqual(0);
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

afterAll(() => {
  mockLog.mockRestore();
  mockErr.mockRestore();
  vi.useRealTimers();
});
