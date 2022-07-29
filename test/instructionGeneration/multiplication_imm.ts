/* eslint-disable @typescript-eslint/no-non-null-assertion */
import { describe, expect, it, vi } from "vitest";

import { AllocationFlags, DECISION_IDENTIFIER, Flags, FlagState, Register } from "@/enums";
import { IMM_MUL_DI_MAP } from "@/helper";
import { mul } from "@/instructionGeneration/multiplication";
import { Paul } from "@/paul";
import type { AllocationReq, AllocationRes, Allocations, asm, CryptOpt } from "@/types";

const allocate = vi.fn();
const getCurrentAllocations = vi.fn();
const declare128 = vi.fn();
const declareFlagState = vi.fn();
const flagStateString = vi.fn(() => ";flagStateString");

vi.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          flagStateString,
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
describe("instructionGeneration:mul_imm", () => {
  it("should have non-specialized code (imul) for imm, which are not in IMM_MUL_DI_MAP", () => {
    const factor = "0x2012";
    expect(factor in IMM_MUL_DI_MAP).toBeFalsy(); // assert for the test
    declareFlagState.mockClear();
    getCurrentAllocations.mockClear().mockImplementation(() => {
      return {
        x30: { datatype: "u64", store: Register.rax },
      } as Allocations;
    });
    allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
      expect(req.oReg).toHaveLength(1);
      expect(req.oReg[0]).toEqual("x40");

      expect(req.in).toHaveLength(1);
      expect(req.in[0]).toEqual("x30");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
      return {
        oReg: [Register.r11 /*x24*/],
        in: [Register.rax /*x30*/],
      };
    });
    const c: CryptOpt.StringOperation = {
      name: ["x40"],
      datatype: "u64",
      operation: "*",
      decisions: {
        di_choose_arg: [1, ["x30", factor]],
      },
      decisionsHot: [],
      arguments: ["x30", factor],
    };
    Paul.currentInstruction = c;
    const code: asm[] = mul(c);
    expect(code.length).toBe(2);
    expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
    expect(code[1]).toMatch(RegExp(`;.*`));
    expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
    expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
    expect(allocate).toBeCalled();
  });
  describe("should have specialized code for imm 0x2", () => {
    const factor = "0x2";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(RegExp(`;.*`));
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shl", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
        return {
          oReg: [Register.rax /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shl rax, 0x1/);
      expect(code[1]).toMatch(RegExp(`;.*`));
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shlx", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x31: { datatype: "u64", store: Register.rax },
          [factor]: { datatype: "u64", store: Register.rbx },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(2);
        expect(req.in[0]).toEqual("x31");
        expect(req.in[1]).toEqual("0x1"); // shlx by one is *=2

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x31*/, Register.rbx /*0x01*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x31", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [2, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x31", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shlx rcx, rax, rbx.*/);
      expect(code[1]).toMatch(RegExp(`;.*`));
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      const factor = "0x2";
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [3, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(1);
      expect(code[0]).toMatch(/lea rcx, \[rax \+ rax\].*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  describe("should have specialized code for imm 0x3", () => {
    const factor = "0x3";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(1);
      expect(code[0]).toMatch(/lea rcx, \[rax \+ 2 \* rax\].*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  describe("should have specialized code for imm 0x4", () => {
    const factor = "0x4";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shl", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
        return {
          oReg: [Register.rax /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shl rax, 0x2/);
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shlx", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x31: { datatype: "u64", store: Register.rax },
          [factor]: { datatype: "u64", store: Register.rbx },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(2);
        expect(req.in[0]).toEqual("x31");
        expect(req.in[1]).toEqual("0x2"); // shlx by two is *=4

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x31*/, Register.rbx /*0x01*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x31", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [2, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x31", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shlx rcx, rax, rbx.*/);
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [3, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(1);
      expect(code[0]).toMatch(/lea rcx, \[ 4 \* rax\].*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  describe("should have specialized code for imm 0x5", () => {
    const factor = "0x5";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(1);
      expect(code[0]).toMatch(/lea rcx, \[rax \+ 4 \* rax\].*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  describe("should have specialized code for imm 0x8", () => {
    const factor = "0x8";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shl", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
        return {
          oReg: [Register.rax /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shl rax, 0x3/);
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shlx", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x31: { datatype: "u64", store: Register.rax },
          [factor]: { datatype: "u64", store: Register.rbx },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(2);
        expect(req.in[0]).toEqual("x31");
        expect(req.in[1]).toEqual("0x3"); // shlx by three is *=8

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x31*/, Register.rbx /*0x01*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x31", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [2, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x31", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shlx rcx, rax, rbx.*/);
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [3, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(1);
      expect(code[0]).toMatch(/lea rcx, \[ 8 \* rax\].*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  describe("should have specialized code for imm 0xa", () => {
    const factor = "0xa";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/lea rcx, \[rax \+ rax\].*/);
      expect(code[1]).toMatch(/lea rcx, \[rcx \+ 4 \* rcx\].*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  describe("should have specialized code for imm 0x10", () => {
    const factor = "0x10";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shl", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
        return {
          oReg: [Register.rax /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shl rax, 0x4/);
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("shlx", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x31: { datatype: "u64", store: Register.rax },
          [factor]: { datatype: "u64", store: Register.rbx },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(2);
        expect(req.in[0]).toEqual("x31");
        expect(req.in[1]).toEqual("0x4"); // shlx by four is *=16

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x31*/, Register.rbx /*0x01*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x31", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [2, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x31", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/shlx rcx, rax, rbx.*/);
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [3, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(/lea rcx, \[8 \* rax\].*/);
      expect(code[1]).toMatch(/lea rcx, \[rcx \+ rcx\].*/);
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
  describe("should have specialized code for imm 0x13", () => {
    const factor = "0x13";
    it("imul", () => {
      expect(factor in IMM_MUL_DI_MAP).toBeTruthy(); // assert for the test
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(1);
        expect(req.oReg[0]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r11 /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });

      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [0, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      expect(code.length).toBe(2);
      expect(code[0]).toMatch(RegExp(`imul r11, rax, ${factor}.*`));
      expect(code[1]).toMatch(/;.*/);
      expect(declareFlagState).toBeCalledWith(Flags.CF, FlagState.KILLED);
      expect(declareFlagState).toBeCalledWith(Flags.OF, FlagState.KILLED);
      expect(allocate).toBeCalled();
    });
    it("lea", () => {
      declareFlagState.mockClear();
      getCurrentAllocations.mockClear().mockImplementation(() => {
        return {
          x30: { datatype: "u64", store: Register.rax },
        } as Allocations;
      });
      allocate.mockClear().mockImplementation((req: AllocationReq): AllocationRes => {
        expect(req.oReg).toHaveLength(2);
        expect(req.oReg[0]).toEqual("x0");
        expect(req.oReg[1]).toEqual("x40");

        expect(req.in).toHaveLength(1);
        expect(req.in[0]).toEqual("x30");

        expect(req.allocationFlags).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeFalsy();
        expect(req.allocationFlags! & AllocationFlags.DISALLOW_MEM).toBeTruthy();
        expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
        return {
          oReg: [Register.r9 /*x0*/, Register.rcx /*x24*/],
          in: [Register.rax /*x30*/],
        };
      });
      const c: CryptOpt.StringOperation = {
        name: ["x40"],
        datatype: "u64",
        operation: "*",
        decisions: {
          di_choose_arg: [1, ["x30", factor]],
          [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: [1, [...IMM_MUL_DI_MAP[factor]]],
        },
        decisionsHot: [],
        arguments: ["x30", factor],
      };
      Paul.currentInstruction = c;
      const code: asm[] = mul(c);
      // imm is 19 (=0x13)
      expect(code.length).toBe(2);

      expect(code[0]).toMatch(/lea r9, \[rax \+ 8 \* rax\]*/); // *9
      expect(code[1]).toMatch(/lea rcx, \[rax \+ 2 \* r9\]*/); // 1 + 2*9
      expect(declareFlagState).not.toBeCalled();
      expect(declareFlagState).not.toBeCalled();
      expect(allocate).toBeCalled();
    });
  });
});
