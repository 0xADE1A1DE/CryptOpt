import { SSA } from "@bcb/raw.type";
import { transformTrunc } from "@bcb/transformations";

describe("bitcoinCoreBridge:transformations", () => {
  describe("transformTrunc", () => {
    const ssa: SSA = {
      name: ["x127"],
      operation: "trunc",
      modifiers: "",
      datatype: "i128",
      arguments: "i128 x126 to i64",
    };
    it("should throw if not trunc+i128", () => {
      expect(() => transformTrunc(Object.assign({}, ssa, { operation: "add" }))).toThrow();
      expect(() => transformTrunc(Object.assign({}, ssa, { datatype: "i64" }))).toThrow();
    });
    it("should throw if the cast is not 'to i64'", () => {
      expect(() => transformTrunc(Object.assign({}, ssa, { arguments: "i128 x126 to i128" }))).toThrow();
    });
    it("should return a u64-limb0 with the scalar as arg", () => {
      const inst = transformTrunc(ssa);
      expect(inst).toBeTruthy();
      expect(inst.name).toEqual(ssa.name);
      expect(inst.datatype).toEqual("u64");
      expect(inst.operation).toEqual("limb");
      expect(inst.arguments[0]).toEqual("x126");
      expect(inst.arguments[1]).toEqual("0");
    });
  });
});
