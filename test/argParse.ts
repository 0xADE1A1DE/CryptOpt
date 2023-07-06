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

import { describe, expect, it } from "vitest";

import { parsedArgs } from "@/helper";
import { ParsedArgsT } from "@/types";

describe("default argParse", () => {
  const defaultArgs = {
    curve: "curve25519",
    method: "square",
    bridge: "fiat",
    jsonFile: "",
    cFile: "",
    verbose: false,
    bets: 10,
    betRatio: 0.2,
    single: false,
    proof: true,
    logComment: "",
    cyclegoal: 10000,
    evals: 10000,
    framePointer: "omit",
    memoryConstraints: "none",
  };
  Object.entries(defaultArgs).forEach(([key, value]) => {
    it("should have correct defaults", () => {
      expect(parsedArgs).toHaveProperty(key);
      expect(parsedArgs[key as keyof ParsedArgsT]).toBe(value);
    });
  });
});
