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

import { beforeAll, describe, expect, it, vi } from "vitest";

import { C_DI_SPILL_LOCATION, DECISION_IDENTIFIER, Register } from "@/enums";
import { zext } from "@/instructionGeneration/zext";

const ra_zext = vi.fn();
const backupIfVarHasDependencies = vi.fn();

vi.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          pres: [],
          initNewInstruction: () => {
            /**intentionally empty */
          },
          zext: ra_zext,
          backupIfVarHasDependencies,
        };
      },
    },
  };
});
describe("instructionGeneration:zext", () => {
  beforeAll(() => {
    backupIfVarHasDependencies.mockImplementation(() => {
      return Register.rax;
    });
  });
  it("should call zext on RA", () => {
    // assuming arg[0] is u64
    const code = zext({
      name: ["x30"],
      datatype: "u128",
      operation: "zext",
      decisions: {
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
        [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [1, ["arg1[2]", "arg1[2]"]],
      },
      decisionsHot: [],
      arguments: ["x28"],
    });
    expect(ra_zext).toBeCalled();
    expect(code).toHaveLength(0);
  });

  it("should throw if unsuppoted number of names/args ", () => {
    expect(() =>
      zext({
        name: ["x45_0", "x45_1"],
        datatype: "u128",
        operation: "zext",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [1, ["arg1[2]", "arg1[2]"]],
        },
        decisionsHot: [],
        arguments: ["x30"],
      }),
    ).toThrow("name");
    expect(() =>
      zext({
        name: ["x45", "x2"],
        datatype: "u128",
        operation: "zext",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [1, ["arg1[2]", "arg1[2]"]],
        },
        decisionsHot: [],
        arguments: ["x30"],
      }),
    ).toThrow("name");
    expect(() =>
      zext({
        name: ["x45"],
        datatype: "u128",
        operation: "zext",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [1, ["arg1[2]", "arg1[2]"]],
        },
        decisionsHot: [],
        arguments: ["x30", "x2"],
      }),
    ).toThrow("arguments");
  });
  it("should throw if unsuppoted zext datatype", () => {
    expect(() =>
      zext({
        name: ["x45"],
        datatype: "u64",
        operation: "zext",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [1, ["arg1[2]", "arg1[2]"]],
        },
        decisionsHot: [],
        arguments: ["x30"],
      }),
    ).toThrow("zext not supported when datatype !=u128");
  });
});
