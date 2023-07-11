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

/* eslint-disable @typescript-eslint/no-explicit-any */
import { describe, expect, it, vi } from "vitest";

import {
  ByteRegister,
  C_DI_HANDLE_FLAGS_KK,
  C_DI_SPILL_LOCATION,
  DECISION_IDENTIFIER,
  Flags,
  FlagState,
  Register,
} from "@/enums";
import { add } from "@/instructionGeneration/addition";
import { Model } from "@/model";
import { Paul } from "@/paul";
import type { Allocations, CryptOpt, MemoryAllocation, RegisterAllocation, ValueAllocation } from "@/types";

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

  x200: { datatype: "u64", store: "rax" },
  x201: { datatype: "u64", store: "xmm2" },

  // say a flag has been spilled to xmm it'll be pulled back to r64,
  x210: { datatype: "u1", store: "xmm2" },
  x211: { datatype: "u64", store: "r9" },
  x212: { datatype: "u64", store: "r8" },

  // u64 = u1 + u1 but one u1 is still needed elsewehere
  x250: { datatype: "u1", store: Flags.CF },
  x251: { datatype: "u1", store: Flags.OF },
} as Allocations;
type MOCK_MODEL = any;
const allocate = vi.fn();
const getCurrentAllocations = vi.fn().mockImplementation(() => allocs);
const flagState = vi.fn();
const spillFlag = vi.fn();
const addToClobbers = vi.fn();
const declareVarForFlag = vi.fn();
const getW = vi.fn();

const backupIfStoreHasDependencies = vi.fn();
const xmm2reg_return_store_constant = Register.rbx;
vi.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      xmm2reg: vi.fn().mockImplementation((_a: ValueAllocation) => ({
        store: xmm2reg_return_store_constant,
        datatype: "u64",
      })),
      getInstance: () => {
        return {
          addToClobbers,
          addToPreInstructions: vi.fn(),
          allocate,
          backupIfStoreHasDependencies,
          declare128: vi.fn().mockImplementation((name: string) => (allocs[name] = { datatype: "u128" })),
          declareFlagState: () => {
            /**intentionally empty */
          },
          declareVarForFlag,
          flagState,
          flagStateString: () => `flagstatestring`,
          getCurrentAllocations,
          initNewInstruction: () => {
            /**intentionally empty */
          },
          getW,
          loadImmToReg64: vi.fn().mockImplementation((name: string) => {
            if (name in allocs) return allocs[name].store;
            else throw { name, allocs };
          }),
          pres: [],
          spillFlag,
          getVarnameFromStore: vi.fn().mockImplementation((needle: { store: string }) => {
            return Object.entries(allocs).find(([_varname, sto]) => sto.store == needle.store)?.[0];
          }),
        };
      },
    },
  };
});
// this will only mock the 'hasDependants' function
// see https://vitest.dev/guide/mocking.html: "Mock part of a Module"
vi.mock("@/model/model.class.ts", async () => {
  const actual = await vi.importActual<typeof import("@/model/model.class")>("@/model/model.class.ts");
  return {
    Model: {
      ...actual.Model,
      hasDependants: vi.fn().mockImplementation((_depVarname: string) => false),
    },
  };
});

describe("instructionGeneration:add", () => {
  // just assume it does not have deps
  backupIfStoreHasDependencies.mockImplementation(
    (varname: MemoryAllocation | RegisterAllocation, _out: string): string => {
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
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
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
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
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
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
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
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
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
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
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
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
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
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
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
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
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
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
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
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
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
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
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
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
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
  it("should load from xmm", () => {
    getCurrentAllocations.mockClear();

    const c: CryptOpt.StringOperation = {
      name: ["x202"],
      datatype: "u64",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x200", "x201"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
      arguments: ["x200", "x201"],
    };

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    // I dont really care about the order as long as the allocation was done correctly.
    expect(code[0]).toEqual(`lea rax, [ rax + ${xmm2reg_return_store_constant} ]`);
    expect(getCurrentAllocations).toBeCalled();
  });
  it("should load flag to OF from xmm", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
      name: ["x213", "x214"],
      datatype: "u64",
      operation: "addcarryx",
      decisions: {
        di_choose_arg: [1, ["x210", "x211", "x212"]],
        di_flag: [1, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
      arguments: ["x210", "x211", "x212"],
    };

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);

    // I dont really care about the order as long as the allocation was done correctly.
    expect(code[0]).toMatch(/add bl, 0x7F;.*/);
    expect(code[1]).toEqual("adox r9, r8");
    expect(getCurrentAllocations).toBeCalled();
  });

  it("should load flag to CF from xmm", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.KILLED,
          [Flags.OF]: FlagState.KILLED,
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
      name: ["x213", "x214"],
      datatype: "u64",
      operation: "addcarryx",
      decisions: {
        di_choose_arg: [1, ["x210", "x211", "x212"]],
        di_flag: [0, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
      arguments: ["x210", "x211", "x212"],
    };

    // should probably be mocked.
    Paul.currentInstruction = c;

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);

    // I dont really care about the order as long as the allocation was done correctly.
    expect(code[0]).toMatch(/add bl, 0xFF;.*/);
    expect(code[1]).toEqual("adcx r9, r8");
    expect(getCurrentAllocations).toBeCalled();
  });
  it("should spill the not needed flag CF has deps", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.ALIVE,
          [Flags.OF]: FlagState.ALIVE,
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
      name: ["x259"],
      datatype: "u64",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x250", "x251"]],
        di_flag: [0, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
      arguments: ["x250", "x251"],
    };

    const flagSpillMockReg: ByteRegister = ByteRegister.r11b;
    const flagSpillMockReg__64: Register = Register.r11;
    spillFlag.mockClear().mockImplementation((_flag) => flagSpillMockReg);
    // here, the CF shall have deps
    (Model.hasDependants as MOCK_MODEL).mockImplementation((name: string) => allocs[name].store == Flags.CF);

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);

    expect(spillFlag).toBeCalledWith(Flags.CF, c.name[0]); //=> will be spilled to flagSpillMockReg
    expect(code[0]).toBe(`movzx ${flagSpillMockReg__64}, ${flagSpillMockReg}`);
    expect(code[1]).toEqual(`adox ${flagSpillMockReg__64}, r8; spilled cf, zxed it, + 0 + of`);
    // and r8 is the 0x0 from allocs
  });
  it("should spill the not needed flag OF has deps", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.ALIVE,
          [Flags.OF]: FlagState.ALIVE,
        }) as { [f in Flags]: FlagState },
    );

    const myLovelyReg = Register.rsi;
    getW.mockClear().mockImplementation((_name: string) => {
      return myLovelyReg;
    });

    const c: CryptOpt.StringOperation = {
      name: ["x259"],
      datatype: "u64",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x250", "x251"]],
        di_flag: [0, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
      arguments: ["x250", "x251"],
    };

    const flagSpillMockReg: ByteRegister = ByteRegister.r11b;
    spillFlag.mockClear().mockImplementation((_flag) => flagSpillMockReg);

    // here, the OF shall have deps
    (Model.hasDependants as any).mockImplementation((name: string) => {
      return allocs[name].store == Flags.OF;
    });

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);

    expect(spillFlag).toBeCalledWith(Flags.OF); //=> will be spilled to flagSpillMockReg
    expect(getW).toBeCalledWith(c.name[0]); // dest
    expect(code[0]).toEqual(`movzx ${myLovelyReg}, ${flagSpillMockReg}; OF in dest`);
    expect(code[1]).toEqual(`adc ${myLovelyReg}, 0x0; spilled of to r/8, zxed it, adc 0 to out`);
  });

  it("should spill OF, when none have deps", () => {
    getCurrentAllocations.mockClear();
    flagState.mockImplementation(
      () =>
        ({
          [Flags.CF]: FlagState.ALIVE,
          [Flags.OF]: FlagState.ALIVE,
        }) as { [f in Flags]: FlagState },
    );

    const c: CryptOpt.StringOperation = {
      name: ["x259"],
      datatype: "u64",
      operation: "+",
      decisions: {
        di_choose_arg: [1, ["x250", "x251"]],
        di_flag: [0, [Flags.CF, Flags.OF]],
        di_handle_flags_kk: [
          2,
          [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
        ],
        di_choose_imm: [0, ["0x0", "-0x1"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
      arguments: ["x250", "x251"],
    };

    const flagSpillMockReg: ByteRegister = ByteRegister.r11b;
    const flagSpillMockReg__64: Register = Register.r11;
    spillFlag.mockClear().mockImplementation((_flag) => flagSpillMockReg);

    (Model.hasDependants as any).mockImplementation((_name: string) => {
      return false; // none have deps in this test
    });

    const code = add(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(2);

    expect(spillFlag).toBeCalledWith(Flags.OF, c.name[0]); //=> will be spilled to flagSpillMockReg
    expect(code[0]).toEqual(`adc ${flagSpillMockReg}, 0x0; r<-f+f`);
    expect(code[1]).toEqual(`movzx ${flagSpillMockReg__64}, ${flagSpillMockReg}`);
  });
});
