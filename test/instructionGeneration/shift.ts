/* eslint-disable @typescript-eslint/no-non-null-assertion */
import { describe, expect, it, vi } from "vitest";

import { AllocationFlags, Register } from "@/enums";
import { shiftLeft, shiftRight, shiftRightDouble } from "@/instructionGeneration/shift";
import type { AllocationReq, Allocations, CryptOpt } from "@/types";

const allocate = vi.fn();
const getCurrentAllocations = vi.fn();
const declare128 = vi.fn();
const backupIfVarHasDependencies = vi.fn();

vi.mock("@/registerAllocator/RegisterAllocator.class", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          allocate,
          getCurrentAllocations,
          backupIfVarHasDependencies,
          declareFlagState: () => {
            /**intentionally empty */
          },
          pres: [],
          declare128,
          initNewInstruction: () => {
            /**intentionally empty */
          },
        };
      },
    },
  };
});
describe("instructionGeneration:shld", () => {
  it("u64 = u128 << imm should use shl", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x28");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x11_0");
      expect(in1).toEqual(undefined);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r9],
        in: [Register.r9],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x11: { datatype: "u128" },
        x11_0: { datatype: "u64", store: Register.r9 },
        x11_1: { datatype: "u64", store: Register.r10 },
      } as Allocations;
    });
    const c: CryptOpt.StringOperation = {
      name: ["x28"],
      datatype: "u64",
      operation: "<<",
      decisions: { di_choose_arg: [1, ["x11", "0x1"]] },
      decisionsHot: [],
      arguments: ["x11", "0x1"],
    };
    const code = shiftLeft(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(1);
    expect(code[0]).toMatch(/shl r9, 0x1.*/);
  });
  it("should not throw then >>'ing a u128", () => {
    backupIfVarHasDependencies.mockClear().mockImplementation((from: string, outVarname: string) => {
      expect(from).toEqual("x25_1");
      expect(outVarname).toEqual("x27_1");
      return Register.r10 /*x27_1*/;
    });
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x27_0");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x25_0");
      expect(in1).toEqual(undefined);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r9 /*x25_0==x27_0*/],
        in: [Register.r9 /*x25_0==x27_0*/],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x25: { datatype: "u128" },
        x25_0: { datatype: "u64", store: Register.r9 },
        x25_1: { datatype: "u64", store: Register.r10 },
      } as Allocations;
    });
    const c: CryptOpt.StringOperation = {
      name: ["x27"],
      datatype: "u128",
      operation: ">>",
      decisions: { di_choose_arg: [0, ["x25", "0x34"]] },
      decisionsHot: [],
      arguments: ["x25", "0x34"],
    };

    const code = shiftRight(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(2);
    expect(code[0]).toMatch(/shrd r9, r10, 0x34.*/);
    expect(code[1]).toMatch(/shr r10, 0x34.*/);
    expect(declare128).toBeCalled();
    expect(backupIfVarHasDependencies).toBeCalled();
  });
  it("should >> a u128 to u64", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x79");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x78_0");
      expect(in1).toEqual("x78_1");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r9 /*x79==x78_0*/],
        in: [Register.r9 /*x79==x78_0*/, Register.r11 /*x78_1*/],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x78: { datatype: "u128" },
        x78_0: { datatype: "u64", store: Register.r9 },
        x78_1: { datatype: "u64", store: Register.r10 },
      } as Allocations;
    });
    const c: CryptOpt.StringOperation = {
      name: ["x79"],
      datatype: "u64",
      operation: ">>",
      decisions: { di_choose_arg: [0, ["x78", "56"]] },
      decisionsHot: [],
      arguments: ["x78", "56"],
    };

    const code = shiftRight(c);

    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(1);
    expect(code[0]).toMatch(/shrd r9, r11, 56.*/);
    expect(declare128).toBeCalled();
  });
  it("should >> a u64_0+u64_1 to u64", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x79");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x78_0");
      expect(in1).toEqual("x78_1");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r9 /*x79==x78_0*/],
        in: [Register.r9 /*x79==x78_0*/, Register.r11 /*x78_1*/],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x78: { datatype: "u128" },
        x78_0: { datatype: "u64", store: Register.r9 },
        x78_1: { datatype: "u64", store: Register.r10 },
      } as Allocations;
    });
    const c: CryptOpt.StringOperation = {
      name: ["x79"],
      datatype: "u64",
      operation: ">>",
      decisions: { di_choose_arg: [0, ["x78_0", "x78_1", "56"]] },
      decisionsHot: [],
      arguments: ["x78_0", "x78_1", "56"],
    };

    const code = shiftRight(c);

    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(1);
    expect(code[0]).toMatch(/shrd r9, r11, 56.*/);
    expect(declare128).toBeCalled();
  });
});
describe("instructionGeneration:sar", () => {
  it("should allocate the results", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1] = req.in;
      expect(oReg0).toEqual("x58_0");
      expect(oReg1).toEqual("x58_1");
      expect(in0).toEqual("x56_0");
      expect(in1).toEqual("x56_1");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();

      return {
        oReg: [Register.r8 /*x58_0==x56_0*/, Register.r9],
        in: [Register.r8 /*x56_0==x56_0*/, Register.rbp /*x56_1*/],
      };
    });

    const c: CryptOpt.StringOperation = {
      name: ["x58"],
      datatype: "u128",
      operation: "sar",
      decisions: { di_choose_arg: [1, ["x56", "0x34"]] },
      decisionsHot: [],
      arguments: ["x56", "0x34"],
    };

    const code = shiftRightDouble(c);

    expect(allocate).toBeCalled();
    expect(code).toHaveLength(3);
    expect(code[0]).toMatch(/shrd r8, rbp, 0x34.*/);
    expect(code[1]).toMatch(/mov r9, 0x34.*/);
    expect(code[2]).toMatch(/sarx r9, rbp, r9.*/);
    expect(declare128).toBeCalled();
  });
});
