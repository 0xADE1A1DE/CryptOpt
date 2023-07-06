/**
 * Copyright 2023 University of Adelaide
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
import { describe, expect, it, vi } from "vitest";

import { ByteRegister, C_DI_SPILL_LOCATION, DECISION_IDENTIFIER, Flags, Register } from "@/enums";
import { sub } from "@/instructionGeneration/subtraction";
import type { Allocations, CryptOpt, MemoryAllocation, RegisterAllocation, ValueAllocation } from "@/types";

// this not consistent in within itself (multiple vars in one single reg).
// but certain vars are only used in certain tests
const allocs = {
  "0x0": { datatype: "u64", store: "r12" },
  "-0x1": { datatype: "u64", store: "rsi" },
  "0x1db41": { datatype: "u64", store: "r9" },
  "arg4[3]": { datatype: "u64", store: "[ r8 + 0x18 ]" },
  "arg5[3]": { datatype: "u64", store: "[ r9 + 0x18 ]" },

  x910: { datatype: "u1", store: "OF" },
  x1000: { datatype: "u1", store: "CF" },
  x48: { datatype: "u1", store: "r12b" },
  x12: { datatype: "u1", store: "[ rsp + 0x0 ]" },
  x13: { datatype: "u64", store: "rdx" },
} as Allocations;

const allocate = vi.fn();
const getCurrentAllocations = vi.fn().mockImplementation(() => allocs);
const backupIfVarHasDependencies = vi.fn().mockImplementation((v, _out) => allocs[v].store);
const loadVarToReg = vi.fn();
const declareHavoc = vi.fn();
const flagState = vi.fn();
const spillFlag = vi.fn();
const addToClobbers = vi.fn();
const addToPreInstructions = vi.fn();
const declareVarForFlag = vi.fn();
const getW = vi.fn();
const setCC = vi.fn();

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
          addToPreInstructions,
          allocate,
          backupIfStoreHasDependencies,
          backupIfVarHasDependencies,
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
          loadVarToReg,
          declareHavoc,
          setCC,
          loadImmToReg64: vi
            .fn()
            .mockImplementation((name: string) => (name in allocs ? allocs[name].store : Register.r15)),
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

describe("instructionGeneration:sub", () => {
  // just assume it does not have deps
  backupIfStoreHasDependencies.mockImplementation(
    (varname: MemoryAllocation | RegisterAllocation, _out: string): string => {
      return varname.store;
    },
  );

  describe("should error on invalids", () => {
    const c: CryptOpt.StringOperation = {
      operation: "subborrowx",
      datatype: "u64",
      name: ["x1003", "x1002"],
      arguments: ["x1000", "arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["x1000", "arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    [
      { datatype: "u128" }, // subborrowx with u128
      { name: ["x111"] }, // subborrowx with one name
      { arguments: ["x1", "x2"] }, // subborrowx without carry in
      { operation: "-" }, // '-' with two names
      { operation: "-", name: ["x31"] }, // '-' with one names, but cin
      { operation: "-", arguments: ["x31", "x4"] }, // '-' with two names
    ].forEach((i) =>
      it("should error", () => {
        expect(() => sub(Object.assign({}, c, i))).toThrow();
      }),
    );
  });

  it("carry-in in CF", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    addToPreInstructions.mockClear();
    spillFlag.mockClear();

    const c: CryptOpt.StringOperation = {
      operation: "subborrowx",
      datatype: "u64",
      name: ["x1003", "x1002"],
      arguments: ["x1000", "arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["x1000", "arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("arg4[3]", "x1003");
    expect(code[0]).toBe("sbb rax, [ r9 + 0x18 ]");
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });

  it("carry-in in OF", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    loadVarToReg.mockClear().mockImplementation(() => ByteRegister.al);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "subborrowx",
      datatype: "u64",
      name: ["x1003", "x1002"],
      arguments: ["x910", "arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["x910", "arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("arg4[3]", "x1003");
    expect(loadVarToReg).toBeCalledWith("x910");
    expect(declareHavoc).toHaveBeenCalledWith(Register.rsi);

    // to load OF
    expect(addToPreInstructions).toHaveBeenNthCalledWith(1, "add sil, al; load to CF<-x910"); // becuase '-0x1' is in rsi, and x910 has been spilled to al alldgeedly

    expect(code[0]).toBe("sbb rax, [ r9 + 0x18 ]");
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("carry-in in r/8", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "subborrowx",
      datatype: "u64",
      name: ["x1003", "x1002"],
      arguments: ["x48", "arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["x48", "arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("arg4[3]", "x1003");

    // to load OF
    expect(addToPreInstructions).toHaveBeenCalledWith("add sil, r12b; load to CF<-x48"); // becuase '-0x1' is in rsi, x48 is in r12b

    expect(declareHavoc).toHaveBeenCalledWith(Register.rsi);
    expect(code[0]).toBe("sbb rax, [ r9 + 0x18 ]");
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("carry-in in m/8", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "subborrowx",
      datatype: "u64",
      name: ["x1003", "x1002"],
      arguments: ["x12", "arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["x12", "arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("arg4[3]", "x1003");

    // to load OF
    expect(addToPreInstructions).toHaveBeenCalledWith("add sil, byte [ rsp + 0x0 ]; load to CF<-x12"); // becuase '-0x1' is in rsi, x12 is in [ rsp + 0 ]

    expect(declareHavoc).toHaveBeenCalledWith(Register.rsi);
    expect(code[0]).toBe("sbb rax, [ r9 + 0x18 ]");
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("carry-in in r/64", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "subborrowx",
      datatype: "u64",
      name: ["x1003", "x1002"],
      arguments: ["x13", "arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["x13", "arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("arg4[3]", "x1003");

    // to load OF
    expect(addToPreInstructions).toHaveBeenCalledWith("add rsi, rdx; load to CF<-x13"); // becuase '-0x1' is in rsi, x13 is in rdx

    expect(declareHavoc).toHaveBeenCalledWith(Register.rsi);
    expect(code[0]).toBe("sbb rax, [ r9 + 0x18 ]");
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("no carry-in", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "subborrowx",
      datatype: "u64",
      name: ["x1003", "x1002"],
      arguments: ["0x0", "arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["0x0", "arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("arg4[3]", "x1003");

    // to load OF
    expect(addToPreInstructions).not.toHaveBeenCalled(); // becuase  no cin

    expect(declareHavoc).not.toHaveBeenCalledWith();
    expect(code[0]).toBe("sub rax, [ r9 + 0x18 ]");
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("no carry-in implicit by using '-'", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "-",
      datatype: "u64",
      name: ["x1003"],
      arguments: ["arg4[3]", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["arg4[3]", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("arg4[3]", "x1003");

    // to load OF
    expect(addToPreInstructions).not.toHaveBeenCalled(); // becuase  no cin

    expect(declareHavoc).not.toHaveBeenCalledWith();
    expect(code[0]).toBe("sub rax, [ r9 + 0x18 ]");
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("imm minuend", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "-",
      datatype: "u64",
      name: ["x1003"],
      arguments: ["0x1db41", "arg5[3]"],
      decisions: {
        di_choose_arg: [0, ["0x1db41", "arg5[3]"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).not.toBeCalledWith("arg4[3]", "x1003");
    expect(backupIfVarHasDependencies).toBeCalledWith("0x1db41", "x1003");

    // to load OF
    expect(addToPreInstructions).not.toHaveBeenCalled(); // becuase  no cin

    expect(declareHavoc).not.toHaveBeenCalledWith();
    expect(code[0]).toBe("sub rax, [ r9 + 0x18 ]"); // because backup
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("imm subtrahend, not in alloc", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "-",
      datatype: "u64",
      name: ["x1003"],
      arguments: ["0x1db41", "0xff"],
      decisions: {
        di_choose_arg: [0, ["0x1db41", "0xff"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("0x1db41", "x1003");

    // to load OF
    expect(addToPreInstructions).not.toHaveBeenCalled(); // becuase  no cin

    expect(declareHavoc).not.toHaveBeenCalledWith();
    expect(code[0]).toBe("sub rax, 0xff"); // because backup , and imm its save
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
  it("imm subtrahend, not in alloc and unsafe", () => {
    getCurrentAllocations.mockClear();
    backupIfVarHasDependencies.mockClear().mockImplementation(() => Register.rax);
    declareHavoc.mockClear();
    addToPreInstructions.mockClear();

    spillFlag.mockClear();
    const c: CryptOpt.StringOperation = {
      operation: "-",
      datatype: "u64",
      name: ["x1003"],
      arguments: ["0x1db41", "0x123456789"],
      decisions: {
        di_choose_arg: [0, ["0x1db41", "0x123456789"]],
        [DECISION_IDENTIFIER.DI_SPILL_LOCATION]: [
          0,
          [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
        ],
      },
      decisionsHot: [],
    };

    const code = sub(c).filter((a) => !a.startsWith(";"));
    expect(code).toHaveLength(1);
    expect(backupIfVarHasDependencies).toBeCalledWith("0x1db41", "x1003");

    // to load OF
    expect(addToPreInstructions).not.toHaveBeenCalled();

    expect(declareHavoc).not.toHaveBeenCalledWith();
    expect(code[0]).toBe("sub rax, r15"); // because backup , and not saveimm , loadImmToReg64 returns r15
    expect(spillFlag).toBeCalledWith(Flags.CF);
    expect(spillFlag).toBeCalledWith(Flags.OF);
  });
});
