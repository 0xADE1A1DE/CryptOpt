/**
 * Copyright 2023 University of Adelaide
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

import { afterAll, beforeAll, describe, expect, it, vi } from "vitest";

import { acceptWorseWithThres } from "@/optimizer/optimizer.helper.class";

let originalRandom: () => number;

beforeAll(() => {
  originalRandom = Math.random;
});
afterAll(() => {
  Math.random = originalRandom;
});

describe("acceptWorseWithThres", () => {
  it("should return true if new is smaller than old", () => {
    expect(acceptWorseWithThres(10, 20, -1)).toBeTruthy();
  });

  it("should likely return true thres=auto and new approx old", () => {
    Math.random = () => 0.1;
    expect(acceptWorseWithThres(21, 20, -1)).toBeTruthy();
  });
  it("should likely return false thres=auto and new far off old", () => {
    Math.random = () => 0.1;
    expect(acceptWorseWithThres(200, 20, -1)).toBeFalsy();
  });
  it("should likely return true if le than thres, independent of how much worse new is", () => {
    Math.random = () => 0.1;
    expect(acceptWorseWithThres(21, 20, 0.1)).toBeTruthy();
    expect(acceptWorseWithThres(22, 20, 0.1)).toBeTruthy();
    expect(acceptWorseWithThres(2200, 20, 0.1)).toBeTruthy();
  });
  it("should likely return false if higher than thres, independent of how much worse new is", () => {
    Math.random = () => 0.2;
    expect(acceptWorseWithThres(21, 20, 0.1)).toBeFalsy();
    expect(acceptWorseWithThres(22, 20, 0.1)).toBeFalsy();
    expect(acceptWorseWithThres(2200, 20, 0.1)).toBeFalsy();
  });
  it("should not return true if thres is 0 and the new one is worse (default)", () => {
    Math.random = () => 0.2;
    expect(acceptWorseWithThres(21, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(22, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(2200, 20, 0)).toBeFalsy();
    Math.random = () => 0.1;
    expect(acceptWorseWithThres(21, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(22, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(2200, 20, 0)).toBeFalsy();
    Math.random = () => 0.00001;
    expect(acceptWorseWithThres(21, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(22, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(2200, 20, 0)).toBeFalsy();
    Math.random = () => 0.9;
    expect(acceptWorseWithThres(21, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(22, 20, 0)).toBeFalsy();
    expect(acceptWorseWithThres(2200, 20, 0)).toBeFalsy();
  });
});
