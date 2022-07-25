import { assertStringNames } from "@/helper";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

import {
  add,
  bitwiseOp,
  cmp,
  conditionalMovZNZ,
  limb,
  mov,
  mul,
  mulx,
  not,
  ror,
  shiftLeft,
  shiftRight,
  shiftRightDouble,
  sub,
  zext,
} from ".";

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
