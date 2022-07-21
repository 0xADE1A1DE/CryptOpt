import { zextR } from "@bcb/transformations/reducers/zextR";
import type { FiatDynArgWCryptoptOperations } from "@bcb/transformations/reducers/zextR";

describe("zextR", () => {
  const body: FiatDynArgWCryptoptOperations[] = [
    {
      name: ["x13"],
      datatype: "u128",
      operation: "zext",
      arguments: ["x12"],
    },
    {
      name: ["x14"],
      datatype: "u128",
      operation: "zext",
      arguments: ["arg1[3]"],
    },
    {
      name: ["x15"],
      datatype: "u128",
      operation: "mulx",
      arguments: ["x14", "x13"],
    },
  ];
  it("should inline zext", () => {
    const res = zextR(body);
    expect(res).toHaveLength(1);
    expect(res[0]).toStrictEqual({
      name: ["x15"],
      datatype: "u128",
      operation: "mulx",
      arguments: ["arg1[3]", "x12"],
    });
  });
  it("should return if there is no zext ops", () => {
    const nonZextOp: FiatDynArgWCryptoptOperations = {
      name: ["x15"],
      datatype: "u128",
      operation: "mulx",
      arguments: ["x14", "x13"],
    };
    const res = zextR([nonZextOp]);
    expect(res).toHaveLength(1);
    expect(res[0]).toStrictEqual(nonZextOp);
  });
});
