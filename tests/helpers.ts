/* eslint-disable @typescript-eslint/no-non-null-assertion */
import { describe, expect, it } from "vitest";

import {
  CALLER_SAVE_PREFIX,
  delimbify,
  IMM_64_BIT_IMM,
  isCallerSave,
  isReadOnlyMemory,
  isWriteOnlyMemory,
  limbify,
  limbifyImm,
  makeU64NameLimbs,
  matchArg,
  matchArgPrefix,
  matchIMM,
  matchXD
} from "@/helper";
import type { CryptOpt } from "@/types";

describe("MatchArgPrefix", () => {
  it("should match argN and outN", () => {
    expect(matchArgPrefix("arg0")).toBeTruthy();
    expect(matchArgPrefix("arg1")).toBeTruthy();
    expect(matchArgPrefix("arg3")).toBeTruthy();

    expect(matchArgPrefix("out0")).toBeTruthy();
    expect(matchArgPrefix("out1")).toBeTruthy();
    expect(matchArgPrefix("out3")).toBeTruthy();
  });
  it("should not match elements of it", () => {
    expect(matchArgPrefix("arg0[0]")).toBeFalsy();
    expect(matchArgPrefix("arg1[1]")).toBeFalsy();
    expect(matchArgPrefix("arg3[0]")).toBeFalsy();

    expect(matchArgPrefix("out0[0]")).toBeFalsy();
    expect(matchArgPrefix("out1[1]")).toBeFalsy();
    expect(matchArgPrefix("out3[0]")).toBeFalsy();
  });
});
describe("MatchArg", () => {
  it("should not match argN and outN", () => {
    expect(matchArg("arg0")).toBeFalsy();
    expect(matchArg("arg1")).toBeFalsy();
    expect(matchArg("arg3")).toBeFalsy();

    expect(matchArg("out0")).toBeFalsy();
    expect(matchArg("out1")).toBeFalsy();
    expect(matchArg("out3")).toBeFalsy();
  });
  it("should match elements of it", () => {
    expect(matchArg("arg0[0]")).toBeTruthy();
    expect(matchArg("arg1[1]")).toBeTruthy();
    expect(matchArg("arg3[0]")).toBeTruthy();

    expect(matchArg("out0[0]")).toBeTruthy();
    expect(matchArg("out1[1]")).toBeTruthy();
    expect(matchArg("out3[0]")).toBeTruthy();
  });
});
describe("Read/WriteOnly memory", () => {
  it("should not match argN and not outN", () => {
    expect(isReadOnlyMemory("arg0")).toBeFalsy();
    expect(isReadOnlyMemory("arg1")).toBeFalsy();
    expect(isReadOnlyMemory("arg3")).toBeFalsy();

    expect(isReadOnlyMemory("out0")).toBeFalsy();
    expect(isReadOnlyMemory("out1")).toBeFalsy();
    expect(isReadOnlyMemory("out3")).toBeFalsy();

    expect(isWriteOnlyMemory("arg0")).toBeFalsy();
    expect(isWriteOnlyMemory("arg1")).toBeFalsy();
    expect(isWriteOnlyMemory("arg3")).toBeFalsy();

    expect(isWriteOnlyMemory("out0")).toBeFalsy();
    expect(isWriteOnlyMemory("out1")).toBeFalsy();
    expect(isWriteOnlyMemory("out3")).toBeFalsy();
  });
  it("should match elements of it accordingly", () => {
    expect(isReadOnlyMemory("arg0[0]")).toBeTruthy();
    expect(isReadOnlyMemory("arg1[1]")).toBeTruthy();
    expect(isReadOnlyMemory("arg3[2]")).toBeTruthy();

    expect(isReadOnlyMemory("out0[0]")).toBeFalsy();
    expect(isReadOnlyMemory("out1[1]")).toBeFalsy();
    expect(isReadOnlyMemory("out3[2]")).toBeFalsy();

    expect(isWriteOnlyMemory("arg0[0]")).toBeFalsy();
    expect(isWriteOnlyMemory("arg1[1]")).toBeFalsy();
    expect(isWriteOnlyMemory("arg3[2]")).toBeFalsy();

    expect(isWriteOnlyMemory("out0[0]")).toBeTruthy();
    expect(isWriteOnlyMemory("out1[1]")).toBeTruthy();
    expect(isWriteOnlyMemory("out3[2]")).toBeTruthy();
  });
});
describe("matchXD", () => {
  it("should match xdd's", () => {
    expect(matchXD("x0")).toBeTruthy();
    expect(matchXD("x1")).toBeTruthy();
    expect(matchXD("x102")).toBeTruthy();
  });
  it("should match xdd_d's", () => {
    expect(matchXD("x0_0")).toBeTruthy();
    expect(matchXD("x0_1")).toBeTruthy();
    expect(matchXD("x1_0")).toBeTruthy();
    expect(matchXD("x1_1")).toBeTruthy();
    expect(matchXD("x102_2")).toBeTruthy();
    expect(matchXD("x102_0")).toBeTruthy();
  });
  it("should not match xdd_dd's", () => {
    expect(matchXD("x0_03")).toBeFalsy();
    expect(matchXD("x0_13")).toBeFalsy();
    expect(matchXD("x1_03")).toBeFalsy();
    expect(matchXD("x1_13")).toBeFalsy();
    expect(matchXD("x102_20")).toBeFalsy();
    expect(matchXD("x102_10")).toBeFalsy();
  });
  it("should not match nullies", () => {
    expect(matchXD(undefined)).toBeFalsy();
    expect(matchXD(null)).toBeFalsy();
    expect(matchXD("")).toBeFalsy();
  });
  it("should from xdd_d  put dd in [1] and _d in [2]", () => {
    const s = "x0_1";
    const m = matchXD(s);
    expect(m).toBeTruthy();
    expect(m![0]).toBe(s);
    expect(m![1]).toBe("0");
    expect(m![2]).toBe("_1");
  });
  it("should from xdd put dd in [1] and nothing into [2]", () => {
    const s = "x0";
    const m = matchXD(s);
    expect(m).toBeTruthy();
    expect(m![0]).toBe(s);
    expect(m![1]).toBe("0");
    expect(m![2]).toBe(undefined);
  });
});
describe("matchImm", () => {
  it("should match decimals ", () => {
    expect(matchIMM("1")).toBeTruthy();
    expect(matchIMM("56")).toBeTruthy();
    expect(matchIMM("-56")).toBeTruthy();
    expect(matchIMM("-1")).toBeTruthy();
  });
  it("should match hex-decimals ", () => {
    expect(matchIMM("0x56")).toBeTruthy();
    expect(matchIMM("-0x56")).toBeTruthy();
    expect(matchIMM("0x5f6")).toBeTruthy();
    expect(matchIMM("-0x5F6")).toBeTruthy();
    expect(matchIMM("-0x1")).toBeTruthy();
    expect("0xffffffff").toBeTruthy();
    expect("-4994812053365940165").toBeTruthy();
    expect("-0x4551231950b75fc5").toBeTruthy();
  });
  it("should not match xdd's", () => {
    expect(matchIMM("x11_0")).toBeFalsy();
    expect(matchIMM("x11_1")).toBeFalsy();
    expect(matchIMM("x11")).toBeFalsy();
  });
});
describe("isCallerSave", () => {
  it("should not error on undefined", () => {
    expect(() => isCallerSave(null)).not.toThrow();
    expect(() => isCallerSave(undefined)).not.toThrow();
  });
  it("should return false if the provided string is not a callersave", () => {
    expect(isCallerSave(null)).toEqual(false);
    expect(isCallerSave(undefined)).toEqual(false);
    expect(isCallerSave("")).toEqual(false);
    expect(isCallerSave("abc")).toEqual(false);
  });
  it("should return true if the provided string is a callersave", () => {
    expect(isCallerSave(`${CALLER_SAVE_PREFIX}1`)).toEqual(true);
    expect(isCallerSave(`${CALLER_SAVE_PREFIX}r11`)).toEqual(true);
    expect(isCallerSave(`${CALLER_SAVE_PREFIX}r12`)).toEqual(true);
    expect(isCallerSave(`${CALLER_SAVE_PREFIX}r14`)).toEqual(true);
    expect(isCallerSave(`${CALLER_SAVE_PREFIX}r13`)).toEqual(true);
  });
});

describe("delimbify", () => {
  it("should remove _n suffix", () => {
    expect(delimbify("x12_3")).toBe("x12");
    expect(delimbify("x12_0")).toBe("x12");
    expect(delimbify("x12")).toBe("x12");
  });
});

describe("limbify", () => {
  it("should add _n suffix in order [lo, hi]", () => {
    const a = limbify("x12");
    expect(a).toHaveLength(2);
    expect(a[0]).toBe("x12_0");
    expect(a[1]).toBe("x12_1");
  });

  it("should not add _n suffix, if not already present", () => {
    const a = limbify("x12_0");
    expect(a).toHaveLength(1);
    expect(a[0]).toBe("x12_0");
    expect(a[1]).toBe(undefined);
  });
  it("should not add _n suffix, if it is a immediate", () => {
    const a = limbify("0x10");
    expect(a).toHaveLength(1);
    expect(a[0]).toBe("0x10");
    expect(a[1]).toBe(undefined);
  });
});
describe("limbifyImm", () => {
  it("should cut long imms into 64-pieces", () => {
    const r = limbifyImm("0x10000000000000000");
    expect(r).toHaveLength(2);
    expect(r[0]).toBe("0x0000000000000000");
    expect(r[1]).toBe("0x1");

    const r2 = limbifyImm("0x1233141000000FFAF314000");
    expect(r2).toHaveLength(2);
    expect(r2[0]).toBe("0x000000FFAF314000");
    expect(r2[1]).toBe("0x1233141");
  });
  it("should return the input if its no imm>64bit", () => {
    const r = limbifyImm("x12");
    expect(r).toHaveLength(1);
    expect(r[0]).toBe("x12");

    const r2 = limbifyImm("0x123");
    expect(r2).toHaveLength(1);
    expect(r2[0]).toBe("0x123");
  });
  it("should limbify a small -imm", () => {
    const r = limbifyImm("-0x455");
    expect(r).toHaveLength(1);
    expect(r[0]).toBe("-0x455");

    const t = `-${IMM_64_BIT_IMM}` as CryptOpt.ConstArgument;
    const r2 = limbifyImm(t);
    expect(r2).toHaveLength(1);
    expect(r2[0]).toBe(t);
  });
  it("should throw on big -imm", () => {
    const t = `-${IMM_64_BIT_IMM}ff` as CryptOpt.ConstArgument;
    expect(() => limbifyImm(t)).toThrow();
  });
});
describe("makeU64NameLimbs", () => {
  it("should limbify u128", () => {
    const c = {
      name: ["x3"],
      datatype: "u128",
      operation: "+",
      arguments: ["x1", "x2"],
      decisions: [],
      decisionsHot: [],
    } as CryptOpt.StringInstruction;
    const out = makeU64NameLimbs(c);
    expect(out).toHaveLength(2);
    expect(out).toStrictEqual(["x3_0", "x3_1"]);
  });
  it("should just return 1 u64' name", () => {
    const c = {
      name: ["x3"],
      datatype: "u64",
      operation: "+",
      arguments: ["x1", "x2"],
      decisions: [],
      decisionsHot: [],
    } as CryptOpt.StringInstruction;
    const out = makeU64NameLimbs(c);
    expect(out).toHaveLength(1);
    expect(out).toStrictEqual(["x3"]);
  });
  it("should just return  2 u64' names", () => {
    const c = {
      name: ["x3", "x4"],
      datatype: "u64",
      operation: "addcarryx",
      arguments: ["x1", "x2", "0x0"],
      decisions: [],
      decisionsHot: [],
    } as CryptOpt.StringInstruction;
    const out = makeU64NameLimbs(c);
    expect(out).toHaveLength(2);
    expect(out).toStrictEqual(["x3", "x4"]);
  });
});
