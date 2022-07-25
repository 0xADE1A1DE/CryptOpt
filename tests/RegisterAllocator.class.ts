import { AllocationFlags, ByteRegister, Flags, FlagState, Register } from "@/enums";
import { isByteRegister, isMem, isRegister, limbify, limbifyImm } from "@/helper";
import { Model } from "@/model";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { CryptOpt, ValueAllocation } from "@/types";

import { nothing } from "./test-helpers";

const mockLog = jest.spyOn(console, "log").mockImplementation(nothing);
const mockErr = jest.spyOn(console, "error").mockImplementation(nothing);
jest.useFakeTimers();
afterAll(() => {
  mockLog.mockRestore();
  mockErr.mockRestore();
});
describe("RegisterAllocator:", () => {
  Model.init({
    json: {
      operation: "fiat_curve25519_carry_mul",
      arguments: [
        {
          datatype: "u64[5]",
          name: "arg1",
          lbound: ["0x0", "0x0", "0x0", "0x0", "0x0"],
          ubound: [
            "0x18000000000000",
            "0x18000000000000",
            "0x18000000000000",
            "0x18000000000000",
            "0x18000000000000",
          ],
        },
        {
          datatype: "u64[5]",
          name: "arg2",
          lbound: ["0x0", "0x0", "0x0", "0x0", "0x0"],
          ubound: [
            "0x18000000000000",
            "0x18000000000000",
            "0x18000000000000",
            "0x18000000000000",
            "0x18000000000000",
          ],
        },
      ],
      returns: [
        {
          datatype: "u64[5]",
          name: "out1",
          lbound: ["0x0", "0x0", "0x0", "0x0", "0x0"],
          ubound: [
            "0x8000000000000",
            "0x8000000000000",
            "0x8000000000000",
            "0x8000000000000",
            "0x8000000000000",
          ],
        },
      ],
      body: [
        {
          name: ["x1"],
          datatype: "u64",
          operation: "=",
          arguments: ["arg1[4]"],
          decisions: {},
          decisionsHot: [] as string[],
        },
        {
          name: ["x3"],
          datatype: "u128",
          operation: "zext",
          arguments: ["x1"],
          decisions: {},
          decisionsHot: [] as string[],
        },
        {
          name: ["x11"],
          datatype: "u64",
          operation: "=",
          arguments: ["arg1[4]"],
          decisions: {},
          decisionsHot: [] as string[],
        },
        {
          name: ["x21"],
          datatype: "u128",
          operation: "zext",
          arguments: ["x11"],
          decisions: {},
          decisionsHot: [] as string[],
        },
        {
          name: ["x28"],
          datatype: "u64",
          operation: "<<",
          arguments: ["x11", "0x1"],
          decisions: {},
          decisionsHot: [] as string[],
        },
      ] as CryptOpt.StringInstruction[],
    },
    curve: "curve25519",
  });
  const ra = RegisterAllocator.getInstance();
  expect(ra).toBeTruthy();
  describe("zext", () => {
    it("should zext x1 and to x1_0 and x1_1, no copying", () => {
      // pre-conditions
      let allocs = ra.getCurrentAllocations();
      expect(allocs["x1"]).toBeUndefined();
      expect(allocs["x1_0"]).toBeUndefined();
      expect(allocs["x1_1"]).toBeUndefined();

      // allocate x1
      const reg = ra.getW("x1");
      allocs = ra.getCurrentAllocations();
      expect(allocs["x1"].datatype).toEqual("u64");
      expect((allocs["x1"] as ValueAllocation).store).toEqual(reg);
      expect(allocs["x1_0"]).toBeUndefined();
      expect(allocs["x1_1"]).toBeUndefined();

      // zext
      const alloc = ra.zext("x1", "x1");
      expect(alloc.datatype).toEqual("u64");

      // check on allocations
      allocs = ra.getCurrentAllocations();
      expect(allocs["x1"].datatype).toBe("u128");

      expect("x1_0" in allocs).toBe(true);
      expect((allocs["x1_0"] as ValueAllocation).store).toBeTruthy();
      expect((allocs["x1_0"] as ValueAllocation).store).toEqual(alloc.store);
      expect(allocs["x1_1"] as ValueAllocation).toBeUndefined;
    });

    it("should backup from, if it has dependencies", () => {
      // assuming arg[0] is u64
      ra.allocate({ oReg: ["x11"], in: [] });
      const allocs = ra.getCurrentAllocations();
      expect(allocs["x11"]).toBeTruthy();
      expect(allocs["x21"]).toBeFalsy();
      expect(() => ra.zext("x11", "x21")).not.toThrow();
      const code = ra.pres.filter((a) => !a.startsWith(";"));
      expect(code).toHaveLength(1);
      expect(code[0]).toMatch(/mov r11, r10;x21, copying x11 here, cause x11 is needed in a reg/);

      expect(allocs["x11"]).toBeTruthy();
      expect(allocs["x21"].datatype).toEqual("u128");
      expect(allocs["x21_0"]).toBeTruthy();

      expect(allocs["x11"].store).not.toEqual(allocs["x21_0"].store);
    });

    it("should zext x5 to x5", () => {
      // u128 x5=(u128)x5
      ra.allocate({ oReg: ["x5"], in: [] });
      let allocs = ra.getCurrentAllocations();
      expect(allocs["x5"]).toBeTruthy();
      expect(allocs["x5"].datatype).toBe("u64");
      const store_x5_0 = allocs["x5"].store;
      expect(allocs["x5_0"]).toBeFalsy();
      expect(allocs["x5_1"]).toBeFalsy();

      expect(() => ra.zext("x5", "x5")).not.toThrow();
      allocs = ra.getCurrentAllocations();
      expect(allocs["x5"]).toBeTruthy();
      expect(allocs["x5"].datatype).toBe("u128");
      expect(allocs["x5_0"].datatype).toBe("u64");
      expect(allocs["x5_0"].store).toBe(store_x5_0);
      expect(allocs["x5_1"]).toBeFalsy();
    });
  });
  describe("declare128 ", () => {
    it("should declare x12 as u128", () => {
      // allocate the limbs
      ra.allocate({ oReg: ["x12_0", "x12_1"], in: [] });
      let allocs = ra.getCurrentAllocations();
      expect("x12" in allocs).toBeFalsy();
      // sanity check
      expect("x12_0" in allocs).toBeTruthy();
      expect("x12_1" in allocs).toBeTruthy();

      expect(() => ra.declare128("x12")).not.toThrow();
      allocs = ra.getCurrentAllocations();
      expect("x12" in allocs).toBeTruthy();
      expect(allocs.x12.datatype).toBe("u128");
      expect(allocs.x12.store).toBeFalsy();
      expect("x12_0" in allocs).toBeTruthy();
      expect("x12_1" in allocs).toBeTruthy();
    });

    it("should not declare non-xdd as u128 ", () => {
      //xdd errors
      expect(() => ra.declare128("arg9")).toThrow("xDD");
      expect(() => ra.declare128("out9")).toThrow("xDD");
      expect(() => ra.declare128("out1[9]")).toThrow("xDD");
      expect(() => ra.declare128("0x1")).toThrow("xDD");
      expect(() => ra.declare128("0x1000000000000000")).toThrow("xDD");
    });

    it("should not declare x12 as u128 if the limbs are not present ", () => {
      const allocs = ra.getCurrentAllocations();

      expect("x13" in allocs).toBeFalsy();
      expect(() => ra.declare128("x13")).toThrow("all limbs");
    });
  });
  describe("allocate", () => {
    it("should allocate two limbs and two imms", () => {
      (ra as any)._allocations = {
        out1: { datatype: "u64[n]", store: "rdi" },
        arg1: { datatype: "u64[n]", store: "rsi" },
        callerSaverbx: { datatype: "u64", store: "rbx" },
        callerSaverbp: { datatype: "u64", store: "rbp" },
        callerSaver12: { datatype: "u64", store: "r12" },
        callerSaver13: { datatype: "u64", store: "r13" },
        callerSaver14: { datatype: "u64", store: "r14" },
        callerSaver15: { datatype: "u64", store: "r15" },
        x11: { datatype: "u64", store: "rax" },
        x21: { datatype: "u128" },
        x21_0: { datatype: "u64", store: "rdx" },
        x22_0: { datatype: "u64", store: "r10" },
        x22_1: { datatype: "u64", store: "r11" },
        x22: { datatype: "u128" },
      };
      const c: CryptOpt.StringInstruction = {
        name: ["x23"],
        datatype: "u128",
        operation: "&",
        decisions: { di_choose_arg: [1, ["x22", "0x10000000000000000"]] },
        decisionsHot: [],
        arguments: ["x22", "0x10000000000000000"],
      };
      ra.initNewInstruction(c);

      let ins: string[] = limbify(c.arguments[0]);
      ins = ins.concat(...limbifyImm(c.arguments[1]));
      const allocation = ra.allocate({
        oReg: limbify(c.name),
        in: ins,
        allocationFlags:
          AllocationFlags.SAVE_FLAG_OF | AllocationFlags.SAVE_FLAG_CF | AllocationFlags.DISALLOW_IMM,
      });
      expect(allocation.in[2] /*imm lo*/).not.toBe(allocation.oReg[0]);
    });
    it("should return the imm, if the flag 'disallow imm' is not set.", () => {
      const res = ra.allocate({
        oReg: [],
        in: ["x11", "0xfa1", "-0x1"],
      });
      expect(res.in).toHaveLength(3);
      expect(res.in[1]).toBe("0xfa1");
      expect(res.in[2]).toBe("-0x1");
    });
    it("should give back r/64 if  SAME_SIZE_READ is set, ", () => {
      (ra as any)._allocations = {
        out1: { datatype: "u64[n]", store: "rdi" },
        arg1: { datatype: "u64[n]", store: "rsi" },
        x65: { datatype: "u64", store: "rax" },
        x66: { datatype: "u1", store: "bl" },
      };
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

      ra.initNewInstruction(c);

      const allocation = ra.allocate({
        oReg: limbify(c.name),
        in: c.arguments,
        allocationFlags:
          AllocationFlags.SAME_SIZE_READ |
          AllocationFlags.SAVE_FLAG_OF |
          AllocationFlags.SAVE_FLAG_CF |
          AllocationFlags.DISALLOW_IMM,
      });

      expect(allocation.in).toHaveLength(2);
      expect(allocation.in[0]).toBe(Register.rax);
      expect(allocation.in[1]).toBe(Register.rbx);
    });
    it("should give back m/64 if  SAME_SIZE_READ is set, ", () => {
      (ra as any)._allocations = {
        out1: { datatype: "u64[n]", store: "rdi" },
        arg1: { datatype: "u64[n]", store: "rsi" },
        x65: { datatype: "u64", store: "rax" },
        x66: { datatype: "u1", store: "[ rsp + 0x08 ]" },
      };
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

      ra.initNewInstruction(c);

      const allocation = ra.allocate({
        oReg: limbify(c.name),
        in: c.arguments,
        allocationFlags:
          AllocationFlags.SAME_SIZE_READ |
          AllocationFlags.SAVE_FLAG_OF |
          AllocationFlags.SAVE_FLAG_CF |
          AllocationFlags.DISALLOW_IMM,
      });

      expect(allocation.in).toHaveLength(2);
      expect(allocation.in[0]).toBe(Register.rax);
      expect(allocation.in[1]).not.toMatch(/byte.*/);
      expect(allocation.in[1]).not.toMatch(/\[.*/);
      expect(isRegister(allocation.in[1])).toBe(true);
    });
    it("should give back imms-as-is, if ~DISALLOW_IMM|SAME_SIZE_READ is set, ", () => {
      (ra as any)._allocations = {
        out1: { datatype: "u64[n]", store: "rdi" },
        arg1: { datatype: "u64[n]", store: "rsi" },
        x65: { datatype: "u64", store: "rax" },
      };
      const c: CryptOpt.StringInstruction = {
        name: ["x68"],
        datatype: "u64",
        operation: "&",
        decisions: {
          di_choose_arg: [1, ["x65", "-0x66"]],
        },
        decisionsHot: [],
        arguments: ["x65", "-0x66"],
      };

      ra.initNewInstruction(c);

      const allocation = ra.allocate({
        oReg: limbify(c.name),
        in: c.arguments,
        allocationFlags:
          AllocationFlags.SAME_SIZE_READ | AllocationFlags.SAVE_FLAG_OF | AllocationFlags.SAVE_FLAG_CF,
      });

      expect(allocation.in).toHaveLength(2);
      expect(allocation.in[0]).toBe(Register.rax);
      expect(allocation.in[1]).toBe("-0x66");
    });
    it("should give back at least one non-mem, if DISALLOW_ALL_MEM is set, ", () => {
      (ra as any)._allocations = {
        out1: { datatype: "u64[n]", store: "rdi" },
        arg1: { datatype: "u64[n]", store: "rsi" },
        x65: { datatype: "u64", store: "[ rsp + 0x08 ]" },
        x66: { datatype: "u64", store: "[ rsp + 0x80 ]" },
      };
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

      Paul.currentInstruction = c; // usually done in the instructionGeneration.ts
      ra.initNewInstruction(c);

      const allocation = ra.allocate({
        oReg: limbify(c.name),
        in: c.arguments,
        allocationFlags: AllocationFlags.DISALLOW_ALL_MEM,
      });

      expect(allocation.in).toHaveLength(2);
      expect(allocation.in.some((a) => !isMem(a))).toBe(true);
      // and cuz of Paul and choose_arg,
      expect(isMem(allocation.in[0])).toBe(true);
      expect(allocation.in[0]).toBe("[ rsp + 0x08 ]");
      expect(isRegister(allocation.in[1])).toBe(true);
    });
    it("should setc a flag, even if there is no deps", () => {
      (ra as any)._allocations = {
        out1: { datatype: "u64[n]", store: "rdi" },
        arg1: { datatype: "u64[n]", store: "rsi" },
        x65: { datatype: "u1", store: Flags.CF },
        x66: { datatype: "u1", store: "[ rsp + 0x80 ]" },
      };
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
      ra.declareFlagState(Flags.CF, FlagState.ALIVE);

      ra.initNewInstruction(c);

      const allocation = ra.allocate({
        oReg: limbify(c.name),
        in: c.arguments,
        allocationFlags:
          AllocationFlags.SAME_SIZE_READ |
          AllocationFlags.IN_0_AS_OUT_REGISTER |
          AllocationFlags.SAVE_FLAG_CF |
          AllocationFlags.SAVE_FLAG_OF,
      });

      const pres = ra.pres;
      expect(pres.some((p) => p.match(/setc al.*/))).toBe(true);
    });
  });
  describe("clobbby clobs", () => {
    it("should split looong immediate value and put 64-bit chunks into the clobs", () => {
      // cast ra->any, cuz im messing with very private information here... some comments here are really just for the lolz.

      (ra as any)._clobbers = new Set<string>();
      const c: CryptOpt.StringInstruction = {
        name: ["x23"],
        datatype: "u128",
        operation: "&",
        decisions: { di_choose_arg: [1, ["x22", "0x10000000000000000"]] },
        decisionsHot: [],
        arguments: ["x22", "0x10000000000000000"],
      };
      ra.initNewInstruction(c);

      const newClobs = (ra as any)._clobbers as Set<string>;
      expect(newClobs.size).toBe(9);
      //name and args and their limbs
      expect(newClobs).toContainEqual("x22");
      expect(newClobs).toContainEqual("x22_0");
      expect(newClobs).toContainEqual("x22_1");
      expect(newClobs).toContainEqual("x23");
      expect(newClobs).toContainEqual("x23_0");
      expect(newClobs).toContainEqual("x23_1");
      // the imm itself
      expect(newClobs).toContainEqual("0x10000000000000000");
      // and the corresponding 64-bit-limbs
      expect(newClobs).toContainEqual("0x1");
      expect(newClobs).toContainEqual("0x0000000000000000");
    });
    it("should split add xDD to clobs when only xDD_n is given  ", () => {
      (ra as any)._clobbers = new Set<string>();
      const c: CryptOpt.StringInstruction = {
        name: ["x23_0"],
        datatype: "u128",
        operation: "&",
        decisions: { di_choose_arg: [0, ["x22"]] },
        decisionsHot: [],
        arguments: ["x22_0"],
      };
      ra.initNewInstruction(c);

      const newClobs = (ra as any)._clobbers as Set<string>;
      expect(newClobs.size).toBe(4);
      expect(newClobs).toContainEqual("x22");
      expect(newClobs).toContainEqual("x22_0");
      expect(newClobs).toContainEqual("x23");
      expect(newClobs).toContainEqual("x23_0");
    });

    it("should put name limbs also into clobbers", () => {
      (ra as any)._allocations = {
        x22_0: { datatype: "u64", store: "r10" },
        x22_1: { datatype: "u64", store: "r11" },
        x22: { datatype: "u128" },
      };
      const c: CryptOpt.StringInstruction = {
        name: ["x23"],
        datatype: "u128",
        operation: "&",
        decisions: { di_choose_arg: [1, ["x22", "0x10000000000000000"]] },
        decisionsHot: [],
        arguments: ["x22", "0x10000000000000000"],
      };
      ra.initNewInstruction(c);

      let ins: string[] = limbify(c.arguments[0]);
      ins = ins.concat(...limbifyImm(c.arguments[1]));
      ra.allocate({
        oReg: limbify(c.name),
        in: ins,
      });
      const clobs = (ra as any)._clobbers as Set<string>;
      expect(clobs).toContainEqual("x23");
      expect(clobs).toContainEqual("x22");
      expect(clobs).toContainEqual("x23_0");
      expect(clobs).toContainEqual("x22_0");
      expect(clobs).toContainEqual("x23_1");
      expect(clobs).toContainEqual("x22_1");
      expect(clobs).toContainEqual("0x10000000000000000");
      expect(clobs).toContainEqual("0x0000000000000000");
      expect(clobs).toContainEqual("0x1");
    });
  });
  describe("clearOrphans", () => {
    it("should clear u128s, which dont have limbs", () => {
      (ra as any)._allocations = {
        x11: { datatype: "u64", store: "rax" },

        x21: { datatype: "u128" },
        x21_0: { datatype: "u64", store: "rdx" },
        x22: { datatype: "u128" },
        x22_0: { datatype: "u64", store: "r10" },
        x22_1: { datatype: "u64", store: "r11" },
        x23: { datatype: "u128" },
        x23_1: { datatype: "u64", store: "[rsp + 0x08]" },

        x30: { datatype: "u128" },
      };

      let allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x11");
      expect(allocs).toHaveProperty("x21");
      expect(allocs).toHaveProperty("x21_0");

      expect(allocs).toHaveProperty("x22");
      expect(allocs).toHaveProperty("x22_0");
      expect(allocs).toHaveProperty("x22_1");

      expect(allocs).toHaveProperty("x23");
      expect(allocs).toHaveProperty("x23_1");

      // important TEST
      expect(allocs).toHaveProperty("x30");
      ra.clearOrphans();
      allocs = ra.getCurrentAllocations();

      expect(allocs).toHaveProperty("x11");
      expect(allocs).toHaveProperty("x21");
      expect(allocs).toHaveProperty("x21_0");

      expect(allocs).toHaveProperty("x22");
      expect(allocs).toHaveProperty("x22_0");
      expect(allocs).toHaveProperty("x22_1");

      expect(allocs).toHaveProperty("x23");
      expect(allocs).toHaveProperty("x23_1");

      // important TEST
      expect(allocs).not.toHaveProperty("x30");
    });
  });
  describe("lazyMov", () => {
    it("x5 = x3", () => {
      (ra as any)._allocations = {
        arg1: { datatype: "u64", store: "rsi" },
        x3: { datatype: "u64", store: "rax" },
      };

      let allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("arg1");
      expect(allocs).toHaveProperty("x3");

      expect(allocs).not.toHaveProperty("x5");
      ra.lazyMov("x3", "x5");
      allocs = ra.getCurrentAllocations();

      expect(allocs).toHaveProperty("x5");
      expect(allocs["x5"].store).toBe("rax");
      expect(allocs).not.toHaveProperty("x3");
    });
    it("x5 = x3 with x3 undefined", () => {
      (ra as any)._allocations = {
        arg1: { datatype: "u64", store: "rsi" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("arg1");

      expect(allocs).not.toHaveProperty("x3");
      expect(allocs).not.toHaveProperty("x5");
      expect(() => ra.lazyMov("x3", "x5")).toThrowError();
    });
    it("x5 = x3 with x5 already set", () => {
      (ra as any)._allocations = {
        arg1: { datatype: "u64", store: "rsi" },
        x5: { datatype: "u64", store: "rax" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("arg1");
      expect(allocs).not.toHaveProperty("x3");
      expect(allocs).toHaveProperty("x5");
      expect(() => ra.lazyMov("x3", "x5")).toThrowError();
    });
    it("x5 = arg1[2]  (unsupported, because arg1[2] is always created on demand)", () => {
      (ra as any)._allocations = {
        arg1: { datatype: "u64", store: "rsi" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("arg1");
      expect(() => ra.lazyMov("arg1[2]", "x5")).toThrowError();
    });
  });
  describe("loadVarToReg", () => {
    it("should load mem to reg", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u64", store: "[ rsp + 0x08 ]" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      const r = ra.loadVarToReg("x1");
      expect(ra.pres.pop()).toMatch(RegExp(`mov ${r}, \\[ rsp \\+ 0x08 \\]; .*`));
    });
    it("should load byte to reg with movzx", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u1", store: "[ rsp + 0x08 ]" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      const r = ra.loadVarToReg("x1");
      expect(ra.pres.pop()).toMatch(RegExp(`mov ${r}, byte \\[ rsp \\+ 0x08 \\]; .*`));
    });
    it("should load byte to reg with movzx", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u1", store: "[ rsp + 0x08 ]" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      const r = ra.loadVarToReg("x1", "movzx");
      expect(ra.pres.pop()).toMatch(RegExp(`movzx ${r}, byte \\[ rsp \\+ 0x08 \\]; .*`));
    });
    it("should load byte to reg with mov, if var is already a u64", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u64", store: "[ rsp + 0x08 ]" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      const r = ra.loadVarToReg("x1");
      expect(ra.pres.pop()).toMatch(RegExp(`mov ${r}, \\[ rsp \\+ 0x08 \\];.*`));
    });
    it("should do nothing if var is in reg", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u64", store: "rax" },
      };

      const allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      const r = ra.loadVarToReg("x1");
      expect(ra.pres).toHaveLength(0);
    });
    it("should spill var to u64 if it is in a flag, and set allocations", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u1", store: Flags.CF },
      };
      (ra as any)._flagState[Flags.CF] = FlagState.ALIVE;

      let allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      const r = ra.loadVarToReg("x1", "movzx");
      const pres = ra.pres;
      expect(pres.pop()).toMatch(RegExp(`movzx ${r}.*`));
      expect(pres.pop()).toMatch(/setc .*/);
      allocs = ra.getCurrentAllocations();
      expect(allocs["x1"]).toBeTruthy();
      expect(isByteRegister(allocs["x1"].store)).toBe(false);
    });
  });
  describe("setcc", () => {
    it("should throw if called with !setcc|fags", () => {
      expect(() => ra.setCC("abc" as any, "x1")).toThrow();
      expect(() => ra.setCC("" as any, "x1")).toThrow();
      expect(() => ra.setCC("setc", "x1")).not.toThrow();
      expect(() => ra.setCC(Flags.CF, "x1")).not.toThrow();
    });
    it("should return a byte -reg ", () => {
      const r = ra.setCC("setne", "x100");
      expect(isByteRegister(r)).toBe(true);
      expect(ra.pres.pop()!.startsWith("setne")).toBe(true);
    });
    it("should set the correct flag (CF)", () => {
      const f = Flags.CF;
      ra.declareVarForFlag(f, "x100");
      let allocs = ra.getCurrentAllocations();
      expect(allocs["x100"].datatype).toBe("u1");
      expect(allocs["x100"].store).toBe(f);
      const r = ra.setCC(f, "x100");
      expect(isByteRegister(r)).toBe(true);
      allocs = ra.getCurrentAllocations();
      expect(allocs["x100"].datatype).toBe("u1");
      expect(allocs["x100"].store).toBe(r);
      expect(ra.pres.pop()!.startsWith("setc")).toBe(true);
    });
    it("should set the correct flag (OF)", () => {
      const f = Flags.OF;
      ra.declareVarForFlag(f, "x100");
      let allocs = ra.getCurrentAllocations();
      expect(allocs["x100"].datatype).toBe("u1");
      expect(allocs["x100"].store).toBe(f);

      const r = ra.setCC(f, "x100");
      expect(isByteRegister(r)).toBe(true);
      allocs = ra.getCurrentAllocations();
      expect(allocs["x100"].datatype).toBe("u1");
      expect(allocs["x100"].store).toBe(r);
      expect(ra.pres.pop()!.startsWith("seto")).toBe(true);
    });
    it("should update allocations", () => {
      const f = Flags.OF;
      ra.declareVarForFlag(f, "x100");
      let allocs = ra.getCurrentAllocations();
      expect(allocs["x100"].datatype).toBe("u1");
      expect(allocs["x100"].store).toBe(f);

      const r = ra.setCC(f, "x100");
      expect(isByteRegister(r)).toBe(true);
      allocs = ra.getCurrentAllocations();
      expect(allocs["x100"].datatype).toBe("u1");
      expect(allocs["x100"].store).toBe(r);
      expect(ra.pres.pop()!.startsWith("seto")).toBe(true);
    });
  });
  describe("spillFlag", () => {
    it("should spill flag and set allocations to the byte-reg", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u1", store: Flags.CF },
      };
      (ra as any)._flagState[Flags.CF] = FlagState.ALIVE;

      let allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      const r = ra.spillFlag(Flags.CF, "x1");
      expect(isByteRegister(r as ByteRegister)).toBe(true);
      const pres = ra.pres;
      expect(pres.pop()).toMatch(/setc .*/);
      allocs = ra.getCurrentAllocations();
      expect(allocs["x1"]).toBeTruthy();
      expect(allocs["x1"].store).toBe(r);
    });
  });
  describe("declareDatatypeForVar", () => {
    it("set the datatype for a variable u8->u64", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u1", store: "r8b" },
      };

      let allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      expect(allocs.x1.store).toBe("r8b");
      expect(allocs.x1.datatype).toBe("u1");
      ra.declareDatatypeForVar("x1", "u64");
      allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      expect(allocs.x1.store).toBe("r8");
      expect(allocs.x1.datatype).toBe("u64");
    });
    it("should not update store if its not a register ", () => {
      const m = "[ rsp + 0x10 ]";
      (ra as any)._allocations = {
        x1: { datatype: "u1", store: Flags.CF },
        x2: { datatype: "u1", store: m },
      };

      let allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      expect(allocs.x1.store).toBe(Flags.CF);
      expect(allocs.x1.datatype).toBe("u1");
      expect(allocs).toHaveProperty("x2");

      expect(allocs.x2.store).toBe(m);
      expect(allocs.x2.datatype).toBe("u1");
      ra.declareDatatypeForVar("x1", "u64");
      // or should we throw here?
      ra.declareDatatypeForVar("x2", "u64");
      allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      expect(allocs.x1.store).toBe(Flags.CF);
      expect(allocs.x1.datatype).toBe("u64");
      expect(allocs).toHaveProperty("x2");
      expect(allocs.x2.store).toBe(m);
      expect(allocs.x2.datatype).toBe("u64");
    });
    it("set the datatype for a variable u64->u8->u1", () => {
      (ra as any)._allocations = {
        x1: { datatype: "u64", store: "r9" },
      };

      let allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      expect(allocs.x1.store).toBe("r9");
      expect(allocs.x1.datatype).toBe("u64");

      ra.declareDatatypeForVar("x1", "u8");
      allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      expect(allocs.x1.store).toBe("r9b");
      expect(allocs.x1.datatype).toBe("u8");

      ra.declareDatatypeForVar("x1", "u1");
      allocs = ra.getCurrentAllocations();
      expect(allocs).toHaveProperty("x1");
      expect(allocs.x1.store).toBe("r9b");
      expect(allocs.x1.datatype).toBe("u1");
    });
  });
});
