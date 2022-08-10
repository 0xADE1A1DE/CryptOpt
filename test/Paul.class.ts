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

import { describe, expect, it } from "vitest";

import { C_DI_SPILL_LOCATION, DECISION_IDENTIFIER } from "@/enums";
import { BIAS, Paul } from "@/paul";
import type { CryptOpt } from "@/types";

describe("Paul", () => {
  describe("Paul:choose<T>", () => {
    it("should delimbify before choosing", () => {
      Paul.currentInstruction = {
        name: ["x15"],
        datatype: "u128",
        operation: "mulx",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          di_choose_arg: [1, ["x14", "x13"]],
        },
        decisionsHot: ["di_choose_arg"],
        arguments: ["x14", "x13"],
      } as CryptOpt.DynArgument;

      const arr = ["x14_0", "x13_0"];
      const choice = Paul.chooseArg(arr);
      expect(choice).toEqual("x13_0");
    });
  });
  describe("chooseBetween: biased", () => {
    let limit = Math.pow(10, 5);
    Paul.seed = 101;
    let left = 0,
      right = 0;
    const r = new Array<number>(limit);
    const min = 5;
    const max = 53;
    const delta = Math.abs(min - max);
    const cutoff = min + delta / 2;
    for (let n = 0; n <= limit; n++) {
      const s = Paul.chooseBetween(max, min, BIAS.REVERSE_BELL);
      r[n] = s;
      if (s < cutoff) {
        left += s; // node would be moved more to the start <<<<
      } else {
        right += s; // node would be moved more to the end >>>>>
      }
    }
    limit /= 2;
    // console.log({ neg: left, pos: right, n: left / limit, p: right / limit });
    it("should calculate correct", () => {
      expect(left / limit).toBeLessThan(min + delta / 5);
      expect(right / limit).toBeGreaterThan(max - delta / 5);
    });
  });
});
