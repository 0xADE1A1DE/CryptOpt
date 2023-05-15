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

import { AllocationFlags, C_DI_SPILL_LOCATION, DECISION_IDENTIFIER, Register, XmmRegister } from "@/enums";
import { mov } from "@/instructionGeneration/mov";
import type { AllocationReq, CryptOpt } from "@/types";

const allocate = vi.fn();
const getCurrentAllocations = vi.fn();

vi.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          allocate,
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
  it("should use MOVQ if some value has been spilled to xmm and then to out", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual(undefined);
      expect(in0).toEqual("x22");
      expect(in1).toEqual("out1");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();

      return {
        oReg: [],
        in: [XmmRegister.xmm0, Register.r10],
      };
    });
    getCurrentAllocations.mockClear();
    const c: CryptOpt.StringOperation = {
      name: ["out1[0]"],
      datatype: "u64",
      operation: "=",
      decisions: {
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
        di_choose_arg: [0, ["x22"]],
      },
      decisionsHot: [],
      arguments: ["x22"],
    };

    const code = mov(c).filter((co) => !co.startsWith(";"));
    expect(code[0]).toMatch(/movq \[ r10 \+ 0x0 \], xmm0;.*/);
    expect(getCurrentAllocations).not.toBeCalled();
    expect(allocate).toBeCalled();
  });
  it("should use MOV if some value has not been spilled to xmm and then to out", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual(undefined);
      expect(in0).toEqual("x22");
      expect(in1).toEqual("out1");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();

      return {
        oReg: [],
        in: [Register.r8, Register.r10],
      };
    });
    getCurrentAllocations.mockClear();
    const c: CryptOpt.StringOperation = {
      name: ["out1[0]"],
      datatype: "u64",
      operation: "=",
      decisions: {
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
        di_choose_arg: [0, ["x22"]],
      },
      decisionsHot: [],
      arguments: ["x22"],
    };

    const code = mov(c).filter((co) => !co.startsWith(";"));
    expect(code[0]).toMatch(/mov \[ r10 \+ 0x0 \], r8;.*/);
    expect(getCurrentAllocations).not.toBeCalled();
    expect(allocate).toBeCalled();
  });
});
