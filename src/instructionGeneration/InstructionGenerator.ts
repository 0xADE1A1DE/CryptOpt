
import { assertStringNames } from "@/helper";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

import { add } from "./addition";
import { bitwiseOp } from "./bitwiseOps";
import { cmp } from "./cmp";
import { limb } from "./limb";
import { conditionalMovZNZ,mov } from "./mov";
import { mul, mulx } from "./multiplication";
import { not } from "./not";
import { ror } from "./ror";
import { shiftLeft, shiftRight,shiftRightDouble } from "./shift";
import { sub } from "./subtraction";
import { zext } from "./zext";

export const getInstruction = (c: CryptOpt.StringInstruction): asm[] => {
  assertStringNames(c);
  Paul.currentInstruction = c;
  switch (c.operation) {
    case "*":
      return mul(c);
    case "mulx":
      return mulx(c);
    case "+":
    case "addcarryx": {
      const comment = [
        `\n`,
        `; add:`,
        `; r:${c.name[0]},f:${c.name[1] ?? "_"}<-add(${c.arguments.join(",")})`,
        `; ${RegisterAllocator.getInstance().flagStateString()}`,
      ];
      const instructions = add(c);
      return [...comment, ...RegisterAllocator.getInstance().pres, ...instructions];
    }
    case "subborrowx": {
      const comment = [
        `\n`,
        `; sub:`,
        `; r:${c.name[0]},f:${c.name[1] ?? "_"}<-sub(${c.arguments.join(",")})`,
        `; ${RegisterAllocator.getInstance().flagStateString()}`,
      ];
      const instructions = sub(c);
      return [...comment, ...RegisterAllocator.getInstance().pres, ...instructions];
    }
    case "<<":
      return shiftLeft(c);
    case "shrd":
    case "sar": // because if its a u128, we need to to an shrd, too
      return shiftRightDouble(c);
    case ">>":
      return shiftRight(c);
    case "ror":
      return ror(c);
    case "|":
    case "&":
    case "^":
      return bitwiseOp(c);
    case "=":
      return mov(c);
    case "cmovznz":
      return conditionalMovZNZ(c);
    case "~":
      return not(c);
    case "limb":
      return limb(c);
    case "zext":
      return zext(c);
    case "cmp":
      return cmp(c);
    default:
      throw new Error(`Alarm. Not implemented. ${JSON.stringify(c)}`);
  }
};
