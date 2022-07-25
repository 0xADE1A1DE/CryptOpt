import { Register } from "@/enums";
import { zext } from "@/instructionGeneration/zext";

const ra_zext = jest.fn();
const backupIfVarHasDependencies = jest.fn();

jest.mock("@/registerAllocator/RegisterAllocator.class.ts", () => {
  return {
    RegisterAllocator: {
      getInstance: () => {
        return {
          pres: [],
          initNewInstruction: () => {
            /**intentionally empty */
          },
          zext: ra_zext,
          backupIfVarHasDependencies,
        };
      },
    },
  };
});
describe("instructionGeneration:zext", () => {
  beforeAll(() => {
    backupIfVarHasDependencies.mockImplementation(() => {
      return Register.rax;
    });
  });
  it("should call zext on RA", () => {
    // assuming arg[0] is u64
    const code = zext({
      name: ["x30"],
      datatype: "u128",
      operation: "zext",
      decisions: {},
      decisionsHot: [],
      arguments: ["x28"],
    });
    expect(ra_zext).toBeCalled();
    expect(code).toHaveLength(0);
  });

  it("should throw if unsuppoted number of names/args ", () => {
    expect(() =>
      zext({
        name: ["x45_0", "x45_1"],
        datatype: "u128",
        operation: "zext",
        decisions: {},
        decisionsHot: [],
        arguments: ["x30"],
      }),
    ).toThrow("name");
    expect(() =>
      zext({
        name: ["x45", "x2"],
        datatype: "u128",
        operation: "zext",
        decisions: {},
        decisionsHot: [],
        arguments: ["x30"],
      }),
    ).toThrow("name");
    expect(() =>
      zext({
        name: ["x45"],
        datatype: "u128",
        operation: "zext",
        decisions: {},
        decisionsHot: [],
        arguments: ["x30", "x2"],
      }),
    ).toThrow("arguments");
  });
  it("should throw if unsuppoted zext datatype", () => {
    expect(() =>
      zext({
        name: ["x45"],
        datatype: "u64",
        operation: "zext",
        decisions: {},
        decisionsHot: [],
        arguments: ["x30"],
      }),
    ).toThrow("zext not supported when datatype !=u128");
  });
});
