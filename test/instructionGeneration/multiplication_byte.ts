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
import { beforeEach, describe, expect, it, vi } from "vitest";

import { AllocationFlags, C_DI_SPILL_LOCATION, DECISION_IDENTIFIER, Register, ByteRegister } from "@/enums";
import { mulx } from "@/instructionGeneration/multiplication";
import type { AllocationReq, AllocationRes, asm } from "@/types";

const allocate = vi.fn();
const getCurrentAllocations = vi.fn();
const addToPreInstructions = vi.fn();
const declare128 = vi.fn();
const declareFlagState = vi.fn();

vi.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          declare128,
          allocate,
          getCurrentAllocations,
          declareFlagState,
          addToPreInstructions,
          pres: [],
          initNewInstruction: () => {
            /**intentionally empty */
          },
        };
      },
    },
  };
});
describe("instructionGeneration:mulx_r8", () => {
  const ALLOC_MOCK_RETURN = {
    oReg: [Register.r8, Register.r9],
    in: [Register.rdx, ByteRegister.r14b],
  };
  beforeEach(() => {
    allocate.mockReset();
    allocate.mockImplementation((req: AllocationReq): AllocationRes => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x45_0");
      expect(oReg1).toEqual("x45_1");
      expect(in0).toEqual("x30");
      expect(in1).toEqual("x44");
      // because of x86-64 and 'mulx'
      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.ONE_IN_MUST_BE_IN_RDX).toBeTruthy();
      return ALLOC_MOCK_RETURN;
    });
  });

  it("should zx, if the other operand is a ByteRegister", () => {
    allocate.mockReset();
    allocate.mockImplementation((req: AllocationReq): AllocationRes => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x40");
      expect(oReg1).toEqual("x41");
      expect(in0).toEqual("x30");
      expect(in1).toEqual("x44");
      // because of x86-64 and 'mulx'
      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.ONE_IN_MUST_BE_IN_RDX).toBeTruthy();
      return ALLOC_MOCK_RETURN;
    });
    declare128.mockReset();
    const code: asm[] = mulx({
      name: ["x40", "x41"],
      datatype: "u64",
      operation: "mulx",
      decisions: {
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
        di_choose_arg: [1, ["x30", "x44"]],
      },
      decisionsHot: [],
      arguments: ["x30", "x44"],
    });
    expect(declare128).not.toBeCalled();
    expect(allocate).toBeCalled();
    expect(addToPreInstructions).toBeCalledWith("movzx r14, r14b");
    expect(code[0]).toMatch(/mulx r9, r8, r14;.*/);
  });
});
