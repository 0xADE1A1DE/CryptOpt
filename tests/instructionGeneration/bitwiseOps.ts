import { AllocationFlags, ByteRegister, C_DI_INSTRUCTION_AND, DECISION_IDENTIFIER, Register } from "@/enums";
import { LSB_MAPPING } from "@/helper";
import { bitwiseOp } from "@/instructionGeneration/bitwiseOps";
import { Paul } from "@/paul";
import type { AllocationReq, Allocations, CryptOpt } from "@/types";

let paulChooseAndSpy: jest.SpyInstance;

beforeAll(() => {
  paulChooseAndSpy = jest.spyOn(Paul, "chooseInstructionAND");
});
beforeEach(() => {
  paulChooseAndSpy.mockClear();
});
afterAll(() => {
  paulChooseAndSpy.mockRestore();
});
const allocate = jest.fn();
const getCurrentAllocations = jest.fn();
const declare128 = jest.fn();
const zext = jest.fn();
const declareDatatypeForVar = jest.fn();

jest.mock("@/RegisterAllocator.class.ts", () => {
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
          declare128,
          initNewInstruction: () => {
            /**intentionally empty */
          },
          zext,
          declareDatatypeForVar,
        };
      },
    },
  };
});
describe("instructionGeneration:and", () => {
  it("should allocate read x22_0 and x22_1 because arguments[1] is > u64", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1, in2, in3] = req.in;
      expect(oReg0).toEqual("x23_0");
      expect(oReg1).toEqual("x23_1");
      expect(in0).toEqual("x22_0");
      expect(in1).toEqual("x22_1");
      expect(in2).toEqual("0x0000000000000000");
      expect(in3).toEqual("0x1");

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r9, Register.r8],
        in: [Register.r9, Register.rbx, Register.rcx, Register.rdx],
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
      name: ["x23"],
      datatype: "u128",
      operation: "&",
      decisions: { di_choose_arg: [1, ["x22", "0x10000000000000000"]] },
      decisionsHot: [],
      arguments: ["x22", "0x10000000000000000"],
    };
    Paul.currentInstruction = c; // usually done in the instructionGeneration.ts
    const code = bitwiseOp(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(3);
    expect(code[0]).toMatch(/and r9, rcx/);
    expect(code[1]).toMatch(/mov r8, rbx/); //
    expect(code[2]).toMatch(/and r8, rdx/);
    expect(declare128).toBeCalled();
  });
  it("should allocate x67, and with <=u64 imm, and call zext C_AND, Rely on Paul", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1, in2] = req.in;
      expect(oReg0).toEqual("x67");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x66_0");
      expect(in1).toEqual("0xfffffffffffff");
      expect(in2).toEqual(undefined);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r10],
        in: [Register.r10, Register.rax],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x66_0: { datatype: "u64", store: "rbx" },
        x66_1: { datatype: "u64", store: "r9" },
        x66: { datatype: "u128" },
      } as Allocations;
    });

    // this instruction could deliberately choose to delete x66_1, but I think the entire x66 will be deleted anyhow. lets see, if this will be an issue later on (to have deps on x66_0, but not on x66_1, thus x66_1 wouldnt be deleted cus not all x66-limbs are not used anymore, but x66_1 could..).
    const c: CryptOpt.StringInstruction = {
      name: ["x67"],
      datatype: "u128",
      operation: "&",
      decisions: {
        [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [1, ["x66", "0xfffffffffffff"]],
        [DECISION_IDENTIFIER.DI_INSTRUCTION_AND]: [
          0,
          [C_DI_INSTRUCTION_AND.C_AND, C_DI_INSTRUCTION_AND.C_BZHI],
        ],
      },
      decisionsHot: [],
      arguments: ["x66", "0xfffffffffffff"],
    };
    Paul.currentInstruction = c; // usually done in the instructionGeneration.ts
    const code = bitwiseOp(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(2);
    expect(code[0]).toMatch(/;.*/);
    expect(code[1]).toMatch(/and r10, rax.*/);
    expect(zext).toBeCalled();
    expect(paulChooseAndSpy).toBeCalled();
  });
  it("should allocate x67, and with <=u64 imm, and call zext C_BZHI, rely on Paul", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1, in2] = req.in;
      expect(oReg0).toEqual("x67");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x66_0");
      const nu = LSB_MAPPING["0xfffffffffffff"];
      expect(in1).toEqual(nu);
      expect(in2).toEqual(undefined);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r10],
        in: [Register.rbx, Register.rax],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x66_0: { datatype: "u64", store: "rbx" },
        x66_1: { datatype: "u64", store: "r9" },
        x66: { datatype: "u128" },
      } as Allocations;
    });

    // this instruction could deliberately choose to delete x66_1, but I think the entire x66 will be deleted anyhow. lets see, if this will be an issue later on (to have deps on x66_0, but not on x66_1, thus x66_1 wouldnt be deleted cus not all x66-limbs are not used anymore, but x66_1 could..).
    const c: CryptOpt.StringInstruction = {
      name: ["x67"],
      datatype: "u128",
      operation: "&",
      decisions: {
        [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: [1, ["x66", "0xfffffffffffff"]],
        [DECISION_IDENTIFIER.DI_INSTRUCTION_AND]: [
          1,
          [C_DI_INSTRUCTION_AND.C_AND, C_DI_INSTRUCTION_AND.C_BZHI],
        ],
      },
      decisionsHot: [],
      arguments: ["x66", "0xfffffffffffff"],
    };
    Paul.currentInstruction = c; // usually done in the instructionGeneration.ts
    const code = bitwiseOp(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(2);
    expect(code[0]).toMatch(/;.*/);
    expect(code[1]).toMatch(/bzhi r10, rbx, rax.*/);
    expect(zext).toBeCalled();
    expect(paulChooseAndSpy).toBeCalled();
  });
  it("should u64=u128 & imm64", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0 /*lo*/, oReg1 /*hi*/] = req.oReg;
      const [in0, in1, in2] = req.in;
      expect(oReg0).toEqual("x67");
      expect(oReg1).toEqual(undefined);
      expect(in0).toEqual("x66_0");
      expect(in1).toEqual("0xfffffffffffff");
      expect(in2).toEqual(undefined);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r10],
        in: [Register.rbx, Register.rax],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x66_0: { datatype: "u64", store: "rbx" },
        x66_1: { datatype: "u64", store: "r9" },
        x66: { datatype: "u128" },
      } as Allocations;
    });

    // this instruction could deliberately choose to delete x66_1, but I think the entire x66 will be deleted anyhow. lets see, if this will be an issue later on (to have deps on x66_0, but not on x66_1, thus x66_1 wouldnt be deleted cus not all x66-limbs are not used anymore, but x66_1 could..).
    const c: CryptOpt.StringInstruction = {
      name: ["x67"],
      datatype: "u64",
      operation: "&",
      decisions: { di_choose_arg: [1, ["x66", "0xfffffffffffff"]] },
      decisionsHot: [],
      arguments: ["x66", "0xfffffffffffff"],
    };
    Paul.currentInstruction = c; // usually done in the instructionGeneration.ts
    const code = bitwiseOp(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(1);
    expect(code[0]).toMatch(/and r10, rax.*/);
    expect(zext).toBeCalled();
  });
  it("should use AND, if the mask is allocated already, regardless of decision+Paul", () => {
    const bitmask = "0xfffffffffffff";
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0] = req.oReg;
      const [in0, in1] = req.in;
      expect(req.oReg).toHaveLength(1);
      expect(oReg0).toEqual("x68");

      expect(req.in).toHaveLength(2);
      expect(in0).toEqual("x65");
      expect(in1).toEqual(bitmask);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r10],
        in: [Register.rbx, Register.rax],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x65: { datatype: "u64", store: "rbx" },
        [bitmask]: { datatype: "u64", store: "rax" },
      } as Allocations;
    });

    const c: CryptOpt.StringInstruction = {
      name: ["x68"],
      datatype: "u64",
      operation: "&",
      decisions: {
        [DECISION_IDENTIFIER.DI_INSTRUCTION_AND]: [
          1, //<---------------------------------------------note how this points to bzhi
          [C_DI_INSTRUCTION_AND.C_AND, C_DI_INSTRUCTION_AND.C_BZHI],
        ],
        di_choose_arg: [1, ["x65", bitmask]],
      },
      decisionsHot: [],
      arguments: ["x65", bitmask],
    };
    Paul.currentInstruction = c; // usually done in the instructionGeneration.ts
    const code = bitwiseOp(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(2);
    expect(code[0]).toMatch(/;.*/);
    expect(code[1]).toMatch(/and r10, rax.*/);
    expect(paulChooseAndSpy).not.toBeCalled();
  });
  it("should use BZHI if the LSB  is allocated already, regardless of decision+Paul", () => {
    const bitmask = "0xfffffffffffff";
    const bits = LSB_MAPPING[bitmask];
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0] = req.oReg;
      const [in0, in1] = req.in;
      expect(req.oReg).toHaveLength(1);
      expect(oReg0).toEqual("x68");

      expect(req.in).toHaveLength(2);
      expect(in0).toEqual("x65");
      expect(in1).toEqual(bits);

      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.DISALLOW_IMM).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.IN_0_AS_OUT_REGISTER).toBeFalsy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_OF).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAVE_FLAG_CF).toBeTruthy();

      return {
        oReg: [Register.r10],
        in: [Register.rbx, Register.rax],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x65: { datatype: "u64", store: "rbx" },
        [bits]: { datatype: "u64", store: "rax" }, //<<<<----------bits are allocated already
      } as Allocations;
    });

    const c: CryptOpt.StringInstruction = {
      name: ["x68"],
      datatype: "u64",
      operation: "&",
      decisions: {
        [DECISION_IDENTIFIER.DI_INSTRUCTION_AND]: [
          0, //<---------------------------------------------note how this points to AND
          [C_DI_INSTRUCTION_AND.C_AND, C_DI_INSTRUCTION_AND.C_BZHI],
        ],
        di_choose_arg: [1, ["x65", bitmask]],
      },
      decisionsHot: [],
      arguments: ["x65", bitmask],
    };
    Paul.currentInstruction = c; // usually done in the instructionGeneration.ts
    const code = bitwiseOp(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(code).toHaveLength(2);
    expect(code[0]).toMatch(/;.*/);
    expect(code[1]).toMatch(/bzhi r10, rbx, rax.*/);
    expect(paulChooseAndSpy).not.toBeCalled();
  });
  it("should use SAME_SIZE_READ, for the case that one arg is not rm/64 ", () => {
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0] = req.oReg;
      const [in0, in1] = req.in;
      expect(req.oReg).toHaveLength(1);
      expect(oReg0).toEqual("x68");

      expect(req.in).toHaveLength(2);
      expect(in0).toEqual("x65");
      expect(in1).toEqual("x66");
      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAME_SIZE_READ).toBeTruthy();

      return {
        oReg: [Register.r10],
        in: [Register.rax, ByteRegister.bl],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x65: { datatype: "u64", store: "rax" },
        x66: { datatype: "u8", store: "bl" },
      } as Allocations;
    });

    const c: CryptOpt.StringInstruction = {
      name: ["x68"],
      datatype: "u64",
      operation: "&",
      decisions: {
        di_choose_arg: [1, ["x65", "x66"]],
      },
      decisionsHot: [],
      arguments: ["x65", "x66"],
    };
    const code = bitwiseOp(c);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
  });
  it("should call declareDatatypeForVar, if  all args were u1 -> result is u1, too ", () => {
    declareDatatypeForVar.mockClear();
    allocate.mockImplementation((req: AllocationReq) => {
      const [oReg0] = req.oReg;
      const [in0, in1] = req.in;
      expect(req.oReg).toHaveLength(1);
      expect(oReg0).toEqual("x68");

      expect(req.in).toHaveLength(2);
      expect(in0).toEqual("x65");
      expect(in1).toEqual("x66");
      expect(req.allocationFlags).toBeTruthy();
      expect(req.allocationFlags! & AllocationFlags.SAME_SIZE_READ).toBeTruthy();

      return {
        oReg: [Register.r10],
        in: [ByteRegister.al, ByteRegister.bl],
      };
    });
    getCurrentAllocations.mockImplementation(() => {
      return {
        x65: { datatype: "u1", store: "al" },
        x66: { datatype: "u1", store: "bl" },
      } as Allocations;
    });

    const c: CryptOpt.StringInstruction = {
      name: ["x68"],
      datatype: "u64",
      operation: "&",
      decisions: {
        di_choose_arg: [1, ["x65", "x66"]],
      },
      decisionsHot: [],
      arguments: ["x65", "x66"],
    };
    const code = bitwiseOp(c);
    expect(code).toHaveLength(1);
    expect(code[0]).toMatch(/and r10b, bl.*/);
    expect(getCurrentAllocations).toBeCalled();
    expect(allocate).toBeCalled();
    expect(declareDatatypeForVar).toBeCalledWith("x68", "u1");
  });
});
