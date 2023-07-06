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

import { Model } from "@/model";
import { Paul } from "@/paul";

import { createModelHelpers } from "./test-helpers";

describe("Model.class", () => {
  const body = createModelHelpers().nodes;
  Model.init({
    memoryConstraints: "none",
    json: {
      operation: "mul",
      arguments: [
        {
          datatype: "u64[1]",
          name: "arg1",
          lbound: ["0x0"],
          ubound: ["0x18000000000000"],
        },
        {
          datatype: "u64[1]",
          name: "arg2",
          lbound: ["0x0"],
          ubound: ["0x18000000000000"],
        },
      ],
      returns: [
        {
          datatype: "u64[1]",
          name: "out1",
          lbound: ["0x0"],
          ubound: ["0x18000000000000"],
        },
      ],
      body,
    },
  });
  describe("mutatePermutation", () => {
    it("should not throw", () => {
      expect(() => {
        Model.mutatePermutation();
        Model.revertLastMutation();
      }).not.toThrow();
    });
    it("should mutate only at correct spots", () => {
      Paul.seed = 12;
      expect(Model.nodesInTopologicalOrder.map((n) => n.name).join("--")).toBe(
        "x1--x2--x8,x9--x6,_--x29--x27--x100--x3--out1[2]--x30--out1[3]--x101--x102--x4--x28--out1[1]--x103--x5--out1[0]",
      );

      Model.mutatePermutation();
      Model.revertLastMutation();
    });
  });
  describe("hasDependants", () => {
    describe("should correctly say once vars not have deps anymore", () => {
      Model.startNewImplementation();
      /**
       *
       * NOTE: this test very much depends on the order of execution. Obviously.
       * Hence, the check of the expected order.
       *
       */
      expect(Model.nodesInTopologicalOrder.map((n) => n.name).join("--")).toBe(
        "x1--x2--x8,x9--x6,_--x29--x27--x100--x3--out1[2]--x30--out1[3]--x101--x102--x4--x28--out1[1]--x103--x5--out1[0]",
      );

      // the order of this is the order of the 'nodesInTopologicalOrder'
      const cur = {
        x1: true,
        x2: true,
        x8: true, // --x9
        x9: true, // --x8
        x6: true, // --_
        x29: true,
        x27: true,
        x100_0: true,
        x100_1: true,
        x3: true,
        "out1[2]": false, // never has
        x30: true,
        "out1[3]": false, // never has
        x101_0: true,
        x101_1: true,
        x102_0: true,
        x102_1: false, // never has (limb 1)
        x4: true,
        x28: true,
        "out1[1]": false, //never has
        x103_0: false, // never has (limb 0)
        x103_1: true,
        x5: true,
        "out1[0]": false, //never has
      };

      const deltas = [
        /*                                       */ {}, // init
        /*      x1 = arg1[0]                     */ {},
        /*      x2 = arg1[1]                     */ {},
        /*  x8--x9 = x1 * x2                     */ {},
        /*   x6--_ = x1 + x2                     */ {},
        /*     x29 = x6 + x9                     */ { x6: false, x9: false },
        /*     x27 = x8 >> 43                    */ { x8: false },
        /*    x100 = x1 * x2                     */ {},
        /*      x3 = x1 + x2                     */ { x2: false },
        /* out1[2] = x29                         */ { x29: false },
        /*     x30 = arg1[1] + x3                */ {},
        /* out1[3] = x30                         */ { x30: false },
        /*    x101 = x1 * x3                     */ { x3: false, x1: false },
        /*    x102 = x100 * x101                 */ { x101_0: false, x101_1: false },
        /*      x4 = x102 & 0xffffffffffffffff   */ { x102_0: false },
        /*     x28 = x27 + x4                    */ { x27: false },
        /* out1[1] = x28                         */ { x28: false },
        /*    x103 = x100 + x4                   */ { x100_1: false, x100_0: false, x4: false },
        /*      x5 = x103 >> 64                  */ { x103_1: false },
        /* out1[0] = x5                          */ { x5: false },
      ];
      deltas.forEach((d, i) => {
        Object.assign(cur, d);
        Object.entries(cur).map(([varname, expected]) => {
          // must be calculated here, rather than be deferred int the callback
          const r = Model.hasDependants(varname);

          it(`should correctly calc deps for ${varname} after ${i} operations`, () => {
            expect(r).toBe(expected);
          });
        });
        Model.nextOperation();
      });
      // now all shall be false in 'cur'
      expect(Object.values(cur).every((s) => s === false)).toBe(true);
    });
  });
  describe("operationByName", () => {
    it("shold throw if the operation, cant be found", () => {
      expect(() => Model.operationByName("dont exist")).toThrow("cannot find dont exist in the map. TSNH");
    });
    it("shold return the operation, which geneates x1 ", () => {
      const instr = Model.operationByName("x1");
      expect(instr).toEqual(body.find(({ name }) => name[0] == "x1"));
    });
  });
});
