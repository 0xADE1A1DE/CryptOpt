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
import { afterAll, beforeEach, describe, expect, it, vi } from "vitest";

import { AllocationFlags, C_DI_SPILL_LOCATION, DECISION_IDENTIFIER, Register } from "@/enums";
import { mulx } from "@/instructionGeneration/multiplication";
import type { AllocationReq, AllocationRes, Allocations, asm } from "@/types";

import { nothing } from "../test-helpers";

const mockLog = vi.spyOn(console, "log").mockImplementation(nothing);
const allocate = vi.fn();
const getCurrentAllocations = vi.fn();
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
          pres: [],
          initNewInstruction: () => {
            /**intentionally empty */
          },
        };
      },
    },
  };
});
describe("instructionGeneration:mulx", () => {
  const ALLOC_MOCK_RETURN = {
    oReg: [Register.r8, Register.r9],
    in: [Register.rdx, Register.rax],
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

  it("should not declare128, if two 2xu64", () => {
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
    expect(code[0]).toMatch(/mulx r9, r8, rax;.*/);
  });
  it("should throw if unsuppoted mulx datatype", () => {
    expect(() =>
      mulx({
        name: ["x45"],
        datatype: "u8",
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
      }),
    ).toThrow("unsupported datatype");
  });
  describe("multiplication, 128", () => {
    it("write one 128 to two u64", () => {
      getCurrentAllocations.mockReset();
      getCurrentAllocations.mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rdx },
          x44: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      const code: asm[] = mulx({
        name: ["x45"],
        datatype: "u128",
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
      expect(code[0]).toMatch(/mulx r9, r8, rax;.*/);
      expect(getCurrentAllocations).toBeCalled();
      expect(allocate).toBeCalled();
    });

    it("read lo limbs from two u128 if there is no hi limbs ", () => {
      declare128.mockReset();
      getCurrentAllocations.mockReset();
      getCurrentAllocations.mockImplementation(() => {
        return {
          x30: { datatype: "u128" },
          x30_0: { datatype: "u64", store: Register.rdx },
          x44: { datatype: "u128" },
          x44_0: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockReset();
      allocate.mockImplementation((req: AllocationReq): AllocationRes => {
        const [in0, in1] = req.in;
        expect(in0).toEqual("x30_0");
        expect(in1).toEqual("x44_0");
        // because of x86-64 and 'mulx'
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.ONE_IN_MUST_BE_IN_RDX).toBeTruthy();
        return ALLOC_MOCK_RETURN;
      });

      const code: asm[] = mulx({
        name: ["x45"],
        datatype: "u128",
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
      expect(code[0]).toMatch(/mulx r9, r8, rax;.*/);
      expect(allocate).toBeCalled();
      expect(getCurrentAllocations).toBeCalled();
      expect(declare128).toBeCalled();
    });
    it("should multiply both limbs if one factor has two limbs", () => {
      declare128.mockReset();
      getCurrentAllocations.mockReset();
      getCurrentAllocations.mockImplementation(() => {
        return {
          x30: { datatype: "u128" },
          x30_0: { datatype: "u64", store: Register.r11 },
          x30_1: { datatype: "u64", store: Register.r12 },
        } as Allocations;
      });
      allocate.mockReset();
      allocate.mockImplementation((req: AllocationReq): AllocationRes => {
        const [o0, o1, o2, o3] = req.oReg;
        expect(o0).toEqual("x0");
        expect(o1).toEqual("x24_0");
        expect(o2).toEqual("x24_1");
        expect(o3).toEqual(undefined);

        expect(req.in).toHaveLength(3);
        expect(req.in[0]).toEqual("0x1000003d10");
        expect(req.in[1]).toEqual("x30_0");
        expect(req.in[2]).toEqual("x30_1");
        // because of x86-64 and 'mulx'
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.ONE_IN_MUST_BE_IN_RDX).toBeTruthy();
        return {
          oReg: [Register.rcx /*x0*/, Register.r8 /*x24_0*/, Register.r9 /*x24_1*/],
          in: [Register.rdx /*0x1000003d10*/, Register.r11 /*x30_0*/, Register.r12 /*x30_1*/],
        };
      });

      const code: asm[] = mulx({
        name: ["x24"],
        datatype: "u128",
        operation: "mulx",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          di_choose_arg: [1, ["x30", "0x1000003d10"]],
        },
        decisionsHot: [],
        arguments: ["x30", "0x1000003d10"],
      });
      expect(code[0]).toBe(";a_0 * (b_0||b_1)  x24_1, x24_0<- x30 * 0x1000003d10 (u64*u128)");
      expect(code[1]).toMatch(/mulx r9, rcx, r12.*/); /*hi*lo*/
      expect(code[2]).toMatch(/mulx r9, r8, r11.*/); /*lo*lo*/
      expect(code[3]).toMatch(/lea r9, \[r9\+rcx\].*/); /*lo+lo*/
      expect(allocate).toBeCalled();
      expect(getCurrentAllocations).toBeCalled();
      expect(declare128).toBeCalled();
    });
    it("should truncate to u64, if u64 = u64*u64", () => {
      declare128.mockReset();
      declareFlagState.mockReset();
      getCurrentAllocations.mockReset();
      getCurrentAllocations.mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.r11 },
        } as Allocations;
      });
      allocate.mockReset();
      allocate.mockImplementation((req: AllocationReq): AllocationRes => {
        const [o0, o1] = req.oReg;
        expect(o0).toEqual("x24");
        expect(o1).toEqual(undefined);

        expect(req.in).toHaveLength(2);
        expect(req.in[0]).toEqual("x30");
        expect(req.in[1]).toEqual("0x1000003d10");
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.r11 /*x30*/, Register.rax /*0x1000003d10*/],
        };
      });

      const code: asm[] = mulx({
        name: ["x24"],
        datatype: "u64",
        operation: "mulx",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          di_choose_arg: [1, ["x30", "0x1000003d10"]],
        },
        decisionsHot: [],
        arguments: ["x30", "0x1000003d10"],
      });
      expect(code).toHaveLength(1);
      expect(code[0]).toMatch(/imul r11, rax.*/);
      expect(allocate).toBeCalled();
      expect(declare128).not.toBeCalled();
      expect(declareFlagState).toBeCalledTimes(2);
    });
    it("should truncate to u64, if u64 = u64*u64 -- square", () => {
      declare128.mockReset();
      declareFlagState.mockReset();
      getCurrentAllocations.mockReset();
      getCurrentAllocations.mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.r11 },
        } as Allocations;
      });
      allocate.mockReset();
      allocate.mockImplementation((req: AllocationReq): AllocationRes => {
        const [o0, o1] = req.oReg;
        expect(o0).toEqual("x24");
        expect(o1).toEqual(undefined);

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.r11 /*x30*/],
        };
      });

      const code: asm[] = mulx({
        name: ["x24"],
        datatype: "u64",
        operation: "mulx",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          di_choose_arg: [1, ["x30", "x30"]],
        },
        decisionsHot: [],
        arguments: ["x30", "x30"],
      });
      expect(code).toHaveLength(1);
      expect(code[0]).toMatch(/imul r11, r11.*/);
      expect(allocate).toBeCalled();
      expect(declare128).not.toBeCalled();
      expect(declareFlagState).toBeCalledTimes(2);
    });
    it("should multiply both limbs if one factor has two limbs and xchg before, if something else is in rdx but the one limb", () => {
      declare128.mockReset();
      getCurrentAllocations.mockReset();
      getCurrentAllocations.mockImplementation(() => {
        return {
          x30: { datatype: "u128" },
          x30_0: { datatype: "u64", store: Register.r11 },
          x30_1: { datatype: "u64", store: Register.r12 },
        } as Allocations;
      });
      allocate.mockReset();
      allocate.mockImplementation((req: AllocationReq): AllocationRes => {
        const [o0, o1, o2, o3] = req.oReg;
        expect(o0).toEqual("x0");
        expect(o1).toEqual("x24_0");
        expect(o2).toEqual("x24_1");
        expect(o3).toEqual(undefined);

        expect(req.in).toHaveLength(3);
        expect(req.in[0]).toEqual("0x1000003d10");
        expect(req.in[1]).toEqual("x30_0");
        expect(req.in[2]).toEqual("x30_1");
        // because of x86-64 and 'mulx'
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.ONE_IN_MUST_BE_IN_RDX).toBeTruthy();
        return {
          oReg: [Register.rcx /*x0*/, Register.r8 /*x24_0*/, Register.r9 /*x24_1*/],
          in: [Register.r11 /*x30_0*/, Register.rdx /*0x1000003d10*/, Register.r12 /*x30_1*/],
        };
      });

      const code: asm[] = mulx({
        name: ["x24"],
        datatype: "u128",
        operation: "mulx",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          di_choose_arg: [0, ["x30", "0x1000003d10"]],
        },
        decisionsHot: [],
        arguments: ["x30", "0x1000003d10"],
      });
      expect(code[0]).toMatch(/xchg rdx, r11.*/);
      expect(code[1]).toBe(";a_0 * (b_0||b_1)  x24_1, x24_0<- x30 * 0x1000003d10 (u64*u128)");
      expect(code[2]).toMatch(/mulx r9, rcx, r12.*/); /*hi*lo*/
      expect(code[3]).toMatch(/mulx r9, r8, r11.*/); /*lo*lo*/
      expect(code[4]).toMatch(/lea r9, \[r9\+rcx\].*/); /*lo+lo*/
      expect(code[5]).toMatch(/xchg rdx, r11.*/);
      expect(allocate).toBeCalled();
      expect(getCurrentAllocations).toBeCalled();
      expect(declare128).toBeCalled();
    });
    it("should not call allocate with two arg in 'in'", () => {
      allocate.mockReset();
      allocate.mockImplementation((req: AllocationReq): AllocationRes => {
        const [o0, o1] = req.oReg;
        expect(req.oReg).toHaveLength(2);
        expect(o0).toEqual("x173");
        expect(o1).toEqual("x174");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("arg1[2]");
        // because of x86-64 and 'mulx'
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.ONE_IN_MUST_BE_IN_RDX).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
        return {
          oReg: [Register.rcx /*x173*/, Register.r8 /*x174*/],
          in: [Register.rdx /*arg1[2]*/],
        };
      });

      const code: asm[] = mulx({
        datatype: "u64",
        name: ["x173", "x174"],
        operation: "mulx",
        arguments: ["arg1[2]", "arg1[2]"],
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          di_choose_arg: [1, ["arg1[2]", "arg1[2]"]],
        },
        decisionsHot: [],
      });
      expect(code).toHaveLength(1);
      expect(code[0]).toMatch(/mulx r8, rcx, rdx.*/);
      expect(allocate).toBeCalled();
    });

    it.skip(/*skipped because we are currenlty not supporting more than 2 args for mulx'es*/ "write one 128 from u64 * u64 * imm", () => {
      allocate.mockReset();
      allocate.mockImplementation((req: AllocationReq): AllocationRes => {
        const [o0, o1, o2] = req.oReg;
        expect(o0).toEqual("x45_0");
        expect(o1).toEqual("x45_1");
        expect(o2).toEqual(undefined);
        const [in0, in1, in2] = req.in;
        expect(in0).toEqual("x30");
        expect(in1).toEqual("x44");
        expect(in2).toEqual(undefined);
        // because of x86-64 and 'mulx'
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.ONE_IN_MUST_BE_IN_RDX).toBeTruthy();
        return {
          oReg: [Register.rcx, Register.r8],
          in: [Register.rdx /*x30*/, Register.rax /*x44*/],
        };
      });
      getCurrentAllocations.mockReset();
      getCurrentAllocations.mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rdx },
          x44: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      const code: asm[] = mulx({
        name: ["x45"],
        datatype: "u128",
        operation: "mulx",
        decisions: {
          [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
            0,
            [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
          ],
          di_choose_arg: [1, ["x30", "x44", "0x2"]],
        },
        decisionsHot: [],
        arguments: ["x30", "x44", "0x2"],
      });
      // x30 will be in rdx, x44 in rax
      expect(code).toHaveLength(2);
      expect(code[0]).toMatch(/imul rcx, rax, 0x2.*/);
      expect(code[1]).toMatch(/mulx r8, rcx, rcx;.*/);
      expect(getCurrentAllocations).toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  afterAll(() => {
    mockLog.mockRestore();
    vi.useRealTimers();
  });
});
