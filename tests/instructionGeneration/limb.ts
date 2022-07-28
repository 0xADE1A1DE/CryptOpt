/* eslint-disable @typescript-eslint/no-non-null-assertion */
import { describe, expect, it, vi } from "vitest";

import { AllocationFlags, Flags, Register } from "@/enums";
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
    const c: CryptOpt.StringInstruction = {
      name: ["x26"],
      datatype: "u64",
      operation: "limb",
      decisions: { di_choose_arg: [1, ["x22", "1"]] },
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
    const c: CryptOpt.StringInstruction = {
      name: ["x15"],
      datatype: "u64",
      operation: "limb",
      decisions: { di_choose_arg: [1, ["x14", "0"]] },
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
    const c: CryptOpt.StringInstruction = {
      name: ["x15"],
      datatype: "u64",
      operation: "limb",
      decisions: { di_choose_arg: [1, ["x14", "0"]] },
      decisionsHot: [],
      arguments: ["x14", "0"],
    };

    expect(() => limb(c)).toThrow();
    expect(getCurrentAllocations).toBeCalled();
    expect(lazyMov).toBeCalled();
    expect(allocate).not.toBeCalled();
  });
});
