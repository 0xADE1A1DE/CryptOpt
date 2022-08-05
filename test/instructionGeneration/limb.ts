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

/* eslint-disable @typescript-eslint/no-non-null-assertion */
import { describe, expect, it, vi } from "vitest";

import { AllocationFlags, Flags, Register, DECISION_IDENTIFIER, C_DI_SPILL_LOCATION } from "@/enums";
import { limb } from "@/instructionGeneration/limb";
import type { AllocationReq, Allocations, CryptOpt } from "@/types";

const allocate = vi.fn();
const getCurrentAllocations = vi.fn();
const lazyMov = vi.fn();

vi.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          allocate,
          lazyMov,
          getCurrentAllocations,
          declareFlagState: () => {
            /**intentionally empty */
          },
          pres: [],
          initNewInstruction: () => {
            /**intentionally empty */
          },
        };
      },
    },
  };
});

describe("instructionGeneration:limb", () => {
  it("should put limb 1 into x26 from x22", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x26");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x22_1");
      expect(in1).toEqual(undefined);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();

      return {
        oReg: [Register.r9],
        in: [Register.r9],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x22: { datatype: "u128" },
        x22_0: { datatype: "u64", store: Register.r9 },
        x22_1: { datatype: "u64", store: Register.r10 },
      } as Allocations;
    });
    const c: CryptOpt.StringOperation = {
      name: ["x26"],
      datatype: "u64",
      operation: "limb",
      decisions: {
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
        di_choose_arg: [1, ["x22", "1"]],
      },
      decisionsHot: [],
      arguments: ["x22", "1"],
    };

    limb(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
  });
  it("should do nothing(lazyMov) if limb 0 from a u64", () => {
    // this happens in bitcoin-core-bridge scalar_reduce_512
    allocate.mockClear();
    getCurrentAllocations.mockImplementation(() => {
      return {
        x14: { datatype: "u64", store: Register.r9 },
      } as Allocations;
    });
    const c: CryptOpt.StringOperation = {
      name: ["x15"],
      datatype: "u64",
      operation: "limb",
      decisions: {
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
        di_choose_arg: [1, ["x14", "0"]],
      },
      decisionsHot: [],
      arguments: ["x14", "0"],
    };

    limb(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).not.toBeCalled();
  });
  it("should erro out if read-var is i1", () => {
    // this happens in bitcoin-core-bridge scalar_reduce_512
    allocate.mockClear();
    getCurrentAllocations.mockImplementation(() => {
      return {
        x14: { datatype: "i1", store: Flags.CF },
      } as Allocations;
    });
    const c: CryptOpt.StringOperation = {
      name: ["x15"],
      datatype: "u64",
      operation: "limb",
      decisions: {
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
        di_choose_arg: [1, ["x14", "0"]],
      },
      decisionsHot: [],
      arguments: ["x14", "0"],
    };

    expect(() => limb(c)).toThrow();
    expect(getCurrentAllocations).toBeCalled();
    expect(lazyMov).toBeCalled();
    expect(allocate).not.toBeCalled();
  });
});
