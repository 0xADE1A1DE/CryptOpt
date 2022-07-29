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

import { rm } from "fs";
import { basename } from "path";
import { afterAll, expect, it, vi } from "vitest";

import { Optimizer } from "@/optimizer";

import { getTestArgs, getTestResultsPath, nothing } from "../test-helpers";

const mockLog = vi.spyOn(console, "log").mockImplementation(nothing);
const mockErr = vi.spyOn(console, "error").mockImplementation(nothing);

vi.useFakeTimers();
let resultpath = "";

it("optimise", () => {
  return new Promise((resolve, reject) => {
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
          resolve(0);
        }),
      ).not.toThrow();
      vi.runAllTimers();
    } catch (e) {
      mockErr.mockRestore();
      console.error(e);
      reject(e);
    }
  });
});

afterAll(() => {
  rm(resultpath, { recursive: true, force: true }, () => {
    /* intentionally empty */
  });
  mockLog.mockRestore();
  mockErr.mockRestore();
  vi.useRealTimers();
});
