import type { CryptOpt } from "@/types";
import { add } from "@/instructionGeneration/addition";
import { FlagState, Allocations, MemoryAllocation, RegisterAllocation } from "@/Allocation.types";
import { C_DI_HANDLE_FLAGS_KK, Flags } from "@/types";

// this not consistent in within itself (multiple vars in one single reg).
// Certain vars but is only used certain test
const allocs = {
  out1: { datatype: "u64[n]", store: "rdi" },
  arg1: { datatype: "u64[n]", store: "rsi" },
  callerSaverbx: { datatype: "u64", store: "[ rsp + 0x28 ]" },
  callerSaverbp: { datatype: "u64", store: "[ rsp + 0x20 ]" },
  callerSaver12: { datatype: "u64", store: "[ rsp + 0x18 ]" },
  callerSaver13: { datatype: "u64", store: "[ rsp + 0x10 ]" },
  callerSaver14: { datatype: "u64", store: "[ rsp + 0x8 ]" },
  callerSaver15: { datatype: "u64", store: "[ rsp + 0x0 ]" },

  // u128 + u128, 2 additions, one with CF, one with OF
  x15_0: { datatype: "u64", store: "r14" },
  x15_1: { datatype: "u64", store: "r13" },
  x15: { datatype: "u128" },

  x19_0: { datatype: "u64", store: "rbx" },
  x19_1: { datatype: "u64", store: "rdx" },
  x19: { datatype: "u128" },
  x0: { datatype: "u1", store: "OF" },

  // u128 + zext'ed u64
  x90: { datatype: "u128" },
  x90_0: { datatype: "u64", store: "rbp" },
  x90_1: { datatype: "u64", store: "r9" },
  x91: { datatype: "u128" },
  x91_0: { datatype: "u64", store: "rdx" },
  "0x0": { datatype: "u64", store: "r8" },

  // u128 = u128 + u128 + u128
  x100: { datatype: "u128" },
  x100_0: { datatype: "u64", store: "rax" },
  x100_1: { datatype: "u64", store: "rbx" },
  x101: { datatype: "u128" },
  x101_0: { datatype: "u64", store: "rcx" },
  x101_1: { datatype: "u64", store: "rdx" },
  x102: { datatype: "u128" },
  x102_0: { datatype: "u64", store: "rbp" },
  x102_1: { datatype: "u64", store: "rdi" },

  // u128 = u128 + u64
  x110: { datatype: "u128" },
  x110_0: { datatype: "u64", store: "rax" },
  x110_1: { datatype: "u64", store: "rbx" },
  x111: { datatype: "u64", store: "rcx" },
} as Allocations;
const allocate = jest.fn();
const getCurrentAllocations = jest.fn().mockImplementation(() => allocs);
const flagState = jest.fn();
const spillFlag = jest.fn();
const addToPreInstructions = jest.fn();
const addToClobbers = jest.fn();
const declareVarForFlag = jest.fn();

const backupIfStoreHasDependencies = jest.fn();
jest.mock("@/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          addToClobbers,
          addToPreInstructions,
          allocate,
          backupIfStoreHasDependencies,
          declare128: jest.fn().mockImplementation((name: string) => (allocs[name] = { datatype: "u128" })),
          declareFlagState: () => {},
          declareVarForFlag,
          flagState,
          flagStateString: () => `flagstatestring`,
          getCurrentAllocations,
          initNewInstruction: () => {},
          loadImmToReg64: jest.fn().mockImplementation((name: string) => {
            if (name in allocs) return allocs[name].store;
            else throw { name, allocs };
          }),
          pres: [],
          spillFlag,
        };
      },
    },
  };
});

describe("instructionGeneration:add", () => {
  // just assume it does not have deps
  backupIfStoreHasDependencies.mockImplementation(
    (varname: MemoryAllocation | RegisterAllocation, out: string): string => {
      return varname.store;
    },
  );
  it("shold add two u128 to one u128 using provided flag-choice", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        } as { [f in Flags]: FlagState }),
    );

    const c: CryptOpt.StringInstruction = {
      name: ["x20"],
      datatype: "u128",
      operation: "+",
      decisions: {
        di_choose_arg: [0, ["x15", "x19"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
      },
      decisionsHot: [],
      arguments: ["x15", "x19"],
    };

    const code = add(c).filter((a) => !a.startsWith(";"));

    expect(code).toHaveLength(2);
    // no clear OF, because that would be in ra.pres
    expect(code[0]).toBe("adox rbx, r14"); // this adox comes from the di_flag decision + flagState being both FlagState.KILLED
    expect(code[1]).toBe("adox r13, rdx"); // this adox comes from the x0 being an u1 in OF
    expect(getCurrentAllocations).toBeCalled();
    expect(flagState).toBeCalled();
  });
  it("should add a u128 and a u128, which only has the lo limb set.", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        } as { [f in Flags]: FlagState }),
    );

    const c: CryptOpt.StringInstruction = {
      name: ["x92"],
      datatype: "u128",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x90", "x91"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
      },
      decisionsHot: [],
      arguments: ["x90", "x91"],
    };

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);
    expect(code).toEqual(["adox rdx, rbp", "adox r9, r8"]);
    expect(getCurrentAllocations).toBeCalled();
    expect(flagState).toBeCalled();
  });
  it("should add multiple u128's", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        } as { [f in Flags]: FlagState }),
    );

    const c: CryptOpt.StringInstruction = {
      name: ["x92"],
      datatype: "u128",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x100", "x101", "x102"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
      },
      decisionsHot: [],
      arguments: ["x100", "x101", "x102"],
    };

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(4);
    expect(code[0]).toBe("adox rcx, rax");
    expect(code[1]).toBe("adox rbx, rdx");
    expect(code[2]).toBe("adox rbp, rax");
    expect(code[3]).toBe("adox rbx, rdi");
    expect(getCurrentAllocations).toBeCalled();
    expect(flagState).toBeCalled();
  });
  it("should add a u128 and a u64", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        } as { [f in Flags]: FlagState }),
    );

    const c: CryptOpt.StringInstruction = {
      name: ["x112"],
      datatype: "u128",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x110", "x111"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
      },
      decisionsHot: [],
      arguments: ["x110", "x111"],
    };

    // I dont really care about the order as long as the allocation was done correctly.
    //
    // u128 = u128 + u64
    // x110: { datatype: "u128" },
    // x110_0: { datatype: "u64", store: "rax" },
    // x110_1: { datatype: "u64", store: "rbx" },
    // x111: { datatype: "u64", store: "rcx" },
    // "0x0": { datatype: "u64", store: "r8" },
    // x111 is the u64
    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);
    expect(code[0]).toEqual("adox rcx, rax");
    expect(code[1]).toEqual("adox rbx, r8");
    expect(getCurrentAllocations).toBeCalled();
    expect(flagState).toBeCalled();
  });
  it("should add a u64 and a u128 (note the different order)", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        } as { [f in Flags]: FlagState }),
    );

    const c: CryptOpt.StringInstruction = {
      name: ["x112"],
      datatype: "u128",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x111", "x110"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
      },
      decisionsHot: [],
      arguments: ["x111", "x110"],
    };

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);
    // I dont really care about the order as long as the allocation was done correctly.
    expect(code[0]).toEqual("adox rax, rcx");
    expect(code[1]).toEqual("adox rbx, r8");
    expect(getCurrentAllocations).toBeCalled();
    expect(flagState).toBeCalled();
  });
  it("should u64_1 = 0x0+u64+0x0", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        } as { [f in Flags]: FlagState }),
    );
    // getVarnameFromStore()

    const c: CryptOpt.StringInstruction = {
      name: ["x112" /*limb*/, "x113" /*carry*/],
      datatype: "u64",
      operation: "addcarryx",
      decisions: {
        di_choose_arg: [1, ["x111", "x110"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
      },
      decisionsHot: [],
      arguments: ["0x0", "x111", "0x0"],
    };

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    // I dont really care about the order as long as the allocation was done correctly.
    expect(code[0]).toEqual("adox r8, rcx");
    expect(getCurrentAllocations).toBeCalled();
    expect(flagState).toBeCalled();
  });
});
