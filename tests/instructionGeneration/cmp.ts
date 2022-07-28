import { defaults } from "lodash-es";
import { describe, expect, it, vi } from "vitest";

import { AllocationFlags, Flags, FlagState, Register } from "@/enums";
import { llvm2CC } from "@/helper";
import { cmp } from "@/instructionGeneration/cmp";
import type { AllocationReq, Allocations, CryptOpt } from "@/types";

const allocate = vi.fn();
const getCurrentAllocations = vi.fn();
const setCC = vi.fn();
const declareFlagState = vi.fn();
const declareVarForFlag = vi.fn();

vi.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          allocate,
          getCurrentAllocations,
          initNewInstruction: () => {
            /**intentionally empty */
          },
          declareFlagState,
          declareVarForFlag,
          pres: [],
          setCC,
        };
      },
    },
  };
});

describe("instructionGeneration:cmp", () => {
  describe("generic Flag checks", () => {
    it(`should use correct flags`, () => {
      allocate.mockClear().mockImplementation((req: AllocationReq) => {
        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAME_SIZE_READ).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_ALL_MEM).toBeTruthy();

        return {
          oReg: [],
          // lets say, we have moved whatever imm to r9
          in: [Register.r10, Register.r9],
        };
      });
      getCurrentAllocations.mockImplementation(() => {
        return {
          x254: { datatype: "u64", store: Register.r10 },
        } as Allocations;
      });

      const c: CryptOpt.StringInstruction = {
        name: ["x257"],
        datatype: "i1",
        operation: "cmp",
        decisions: {},
        decisionsHot: [],
        arguments: ["ne", "x254", "-0x1"] as CryptOpt.ConstArgument[],
      };

      allocate.mockClear();
      cmp(c);
      expect(allocate).toBeCalled();
    });
  });
  describe(" should compare according to modifier against -0x1", () => {
    const mockimpl = (req: AllocationReq) => {
      expect(req.oReg).toHaveLength(0);

      expect(req.in).toHaveLength(2);
      expect(req.in[0]).toEqual("x254");
      expect(req.in[1]).toEqual("-0x1");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [],
        in: [Register.r10, "-0x1"],
      };
    };
    getCurrentAllocations.mockImplementation(() => {
      return {
        x254: { datatype: "u64", store: Register.r10 },
      } as Allocations;
    });

    const c: Partial<CryptOpt.StringInstruction> = {
      name: ["x257"],
      datatype: "i1",
      operation: "cmp",
      decisions: {},
      decisionsHot: [],
      // arguments: ["ne", "x254", "-0x1"] as CryptOpt.ConstArgument[],
    };

    Object.entries(llvm2CC).forEach(([llvm, setcc]) => {
      const instr = defaults({ arguments: [llvm, "x254", "-0x1"] }, c) as CryptOpt.StringInstruction;
      if (setcc == "setb") {
        //skipping general setb check here, as it has special treatment
        return;
      }
      it(`should use ${setcc}`, () => {
        setCC.mockClear();
        allocate.mockClear().mockImplementation(mockimpl);
        const result = cmp(instr);

        expect(result).toHaveLength(1);
        expect(result[0]).toMatch(/cmp r10, -0x1/);
        expect(setCC).toBeCalledWith(setcc, "x257");
        expect(allocate).toBeCalled();
      });
    });

    describe("should declare the flagstate when setb", () => {
      it("should call declareFlagState", () => {
        const mockimpl = (req: AllocationReq) => {
          expect(req.oReg).toHaveLength(0);

          expect(req.in).toHaveLength(2);
          expect(req.in[0]).toEqual("x254");
          expect(req.in[1]).toEqual("-0x1");

          expect(req.allocationFlags).toBeTruthy();
          expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
          expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
          expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

          return {
            oReg: [],
            in: [Register.r10, "-0x1"],
          };
        };
        getCurrentAllocations.mockImplementation(() => {
          return {
            x254: { datatype: "u64", store: Register.r10 },
          } as Allocations;
        });

        const c: CryptOpt.StringInstruction = {
          name: ["x257"],
          datatype: "i1",
          operation: "cmp",
          decisions: {},
          decisionsHot: [],
          arguments: ["ult" /*setb*/, "x254", "-0x1"] as CryptOpt.ConstArgument[],
        };

        setCC.mockClear();
        allocate.mockClear().mockImplementation(mockimpl);
        declareFlagState.mockClear();
        const result = cmp(c);
        expect(result).toHaveLength(1);
        expect(result[0]).toMatch(/cmp r10, -0x1/);
        expect(setCC).not.toBeCalled();
        expect(allocate).toBeCalled();
        expect(declareFlagState).toBeCalledTimes(1);
        expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
        expect(declareVarForFlag).toBeCalledTimes(1);
        expect(declareVarForFlag).toBeCalledWith(Flags.CF, "x257");
      });
    });
  });

  describe("should mov imm to reg if > 7fffffff", () => {
    const mockimpl = (req: AllocationReq) => {
      expect(req.oReg).toHaveLength(0);

      expect(req.in).toHaveLength(2);
      expect(req.in[0]).toEqual("x254");

      // expect(req.in[1]).toEqual("-0x1"); just some bigger number

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy(); //IMPORTANT

      return {
        oReg: [],
        // lets say, we have moved whatever imm to r9
        in: [Register.r10, Register.r9],
      };
    };
    getCurrentAllocations.mockImplementation(() => {
      return {
        x254: { datatype: "u64", store: Register.r10 },
      } as Allocations;
    });

    const c: Partial<CryptOpt.StringInstruction> = {
      name: ["x257"],
      datatype: "i1",
      operation: "cmp",
      decisions: {},
      decisionsHot: [],
      // arguments: ["ne", "x254", "-0x1"] as CryptOpt.ConstArgument[],
    };

    ["0xffffffff", "-4994812053365940165", "-0x4551231950b75fc5"].forEach((imm) => {
      const instr = defaults({ arguments: ["ne", "x254", imm] }, c) as CryptOpt.StringInstruction;
      it(`should mov to imm for imm: ${imm}`, () => {
        allocate.mockClear().mockImplementation(mockimpl);
        const result = cmp(instr);
        expect(result).toHaveLength(1);
        expect(result[0]).toMatch(/cmp r10, r9/);
        expect(allocate).toBeCalled();
      });
    });
  });
});
