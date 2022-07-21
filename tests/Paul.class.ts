import Paul from "@/Paul.class";
import { BIAS } from "@/Paul.class";
import { CryptOpt } from "@/types";

describe("Paul", () => {
  describe("Paul:choose<T>", () => {
    it("should delimbify before choosing", () => {
      Paul.currentInstruction = {
        name: ["x15"],
        datatype: "u128",
        operation: "mulx",
        decisions: {
          di_choose_arg: [1, ["x14", "x13"]],
        },
        decisionsHot: ["di_choose_arg"],
        arguments: ["x14", "x13"],
      } as CryptOpt.DynArgument;

      const arr = ["x14_0", "x13_0"];
      const choice = Paul.chooseArg(arr);
      expect(choice).toEqual("x13_0");
    });
  });
  describe("chooseBetween: biased", () => {
    let limit = Math.pow(10, 5);
    Paul.seed = 101;
    let left = 0,
      right = 0;
    const r = new Array<number>(limit);
    const min = 5;
    const max = 53;
    const delta = Math.abs(min - max);
    const cutoff = min + delta / 2;
    for (let n = 0; n <= limit; n++) {
      const s = Paul.chooseBetween(max, min, BIAS.REVERSE_BELL);
      r[n] = s;
      if (s < cutoff) {
        left += s; // node would be moved more to the start <<<<
      } else {
        right += s; // node would be moved more to the end >>>>>
      }
    }
    limit /= 2;
    // console.log({ neg: left, pos: right, n: left / limit, p: right / limit });
    expect(left / limit).toBeLessThan(min + delta / 5);
    expect(right / limit).toBeGreaterThan(max - delta / 5);
  });
});
