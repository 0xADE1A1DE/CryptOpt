import { isStructPointer, getArguments, getScalarsAndImmMappedAsConstArg } from "@bcb/helpers";

describe("bitcoinCoreBridge:helpers", () => {
  describe("getArguments", () => {
    it("ptr (load)", () => {
      const a = getArguments("i64, i64* x1, align 8, !tbaa !5");
      expect(a.scalars).toHaveLength(0);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(0);

      expect(a.pointers).toContainEqual({ type: "i64*", id: "x1" });
    });

    it("scalar + type =>cast (zext)", () => {
      const a = getArguments("i64 x4 to i128");
      expect(a.scalars).toHaveLength(1);
      expect(a.casts).toHaveLength(1);
      expect(a.pointers).toHaveLength(0);
      expect(a.imm).toHaveLength(0);

      expect(a.scalars).toContainEqual({ type: "i64", id: "x4" });
      expect(a.casts).toContainEqual({ type: "i128" });
    });

    it("ptr + scalar (store)", () => {
      const a = getArguments("i64* x0, i64 x79");
      expect(a.scalars).toHaveLength(1);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(0);

      expect(a.scalars).toContainEqual({ type: "i64", id: "x79" });
      expect(a.pointers).toContainEqual({ type: "i64*", id: "x0" });
    });

    it("scalars + imm (lshr)", () => {
      const a = getArguments("i128 x78, 52");
      expect(a.scalars).toHaveLength(1);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(0);
      expect(a.imm).toHaveLength(1);

      expect(a.scalars).toContainEqual({ type: "i128", id: "x78" });
      expect(a.imm).toContainEqual({ type: undefined, imm: "52" });
    });

    it("2 scalars + (add)", () => {
      const a = getArguments("i128 x106, x94");
      expect(a.scalars).toHaveLength(2);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(0);
      expect(a.imm).toHaveLength(0);

      expect(a.scalars).toContainEqual({ type: "i128", id: "x106" });
      expect(a.scalars).toContainEqual({ type: undefined, id: "x94" });
    });

    it("ptr + imm (getelementptr)", () => {
      const a = getArguments("i64, i64* x1, i64 3");
      expect(a.scalars).toHaveLength(0);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(1);

      expect(a.pointers).toContainEqual({ type: "i64*", id: "x1" });
      expect(a.imm).toContainEqual({ type: "i64", imm: "3" });
    });
    it("struct-ptr + imm (getelementptr)", () => {
      const a = getArguments(", %struct.secp256k1_scalar* x0, i64 0, i32 0, i64 0");
      expect(a.scalars).toHaveLength(0);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(3);

      expect(a.pointers).toContainEqual({ type: "struct.secp256k1_scalar*", id: "x0" });
      expect(a.imm[0]).toStrictEqual({ type: "i64", imm: "0" });
      expect(a.imm[1]).toStrictEqual({ type: "i32", imm: "0" });
      expect(a.imm[2]).toStrictEqual({ type: "i64", imm: "0" });
    });
    it("struct-ptr + imm (getelementptr)", () => {
      const a = getArguments(", %struct.secp256k1_scalar* x0, i64 0, i32 0, i64 1");
      expect(a.scalars).toHaveLength(0);
      expect(a.casts).toHaveLength(0);
      expect(a.pointers).toHaveLength(1);
      expect(a.imm).toHaveLength(3);

      expect(a.pointers).toContainEqual({ type: "struct.secp256k1_scalar*", id: "x0" });
      expect(a.imm[0]).toStrictEqual({ type: "i64", imm: "0" });
      expect(a.imm[1]).toStrictEqual({ type: "i32", imm: "0" });
      expect(a.imm[2]).toStrictEqual({ type: "i64", imm: "1" });
    });
  });
  describe("getScalarsAndImmMappedAsConstArg", () => {
    it("should... you know... convert numbers to correct numers, as.. you know.. one would expect", () => {
      const s = "i128 x112, 281475040739328";

      const r = getScalarsAndImmMappedAsConstArg(s);
      expect(r).toHaveLength(2);
      expect(r[0]).toBe("x112");
      expect(r[1]).toBe("0x1000003d10000");
    });
    it("Mimimi -  almost 64 1's", () => {
      const s = "i128 x20, 18446744073709551614";

      const r = getScalarsAndImmMappedAsConstArg(s);
      expect(r).toHaveLength(2);
      expect(r[0]).toBe("x20");
      expect(r[1]).toBe("0xfffffffffffffffe");
    });
    it("neg imm", () => {
      const s = "i64 x243, -4994812053365940165";

      const r = getScalarsAndImmMappedAsConstArg(s);
      expect(r).toHaveLength(2);
      expect(r[0]).toBe("x243");
      expect(r[1]).toBe("-0x4551231950b75fc5");
    });
  });
  describe("isStructPointer", () => {
    expect(isStructPointer("struct.abc*")).toBe(true);
    expect(isStructPointer("i64*")).toBe(false);
    expect(isStructPointer("%struct.abc*" as any)).toBe(false);
    expect(isStructPointer("i534.abc*" as any)).toBe(false);
  });
});
