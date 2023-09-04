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

import { assertStringNames } from "@/helper";
import Logger from "@/helper/Logger.class";
import { Paul } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

import { add } from "./addition";
import { bitwiseOp } from "./bitwiseOps";
import { cmp } from "./cmp";
import { limb } from "./limb";
import { conditionalMovZNZ, mov } from "./mov";
import { mul, mulx } from "./multiplication";
import { not } from "./not";
import { ror } from "./ror";
import { shiftLeft, shiftRight, shiftRightDouble } from "./shift";
import { sub } from "./subtraction";
import { zext } from "./zext";

export const getInstruction = (o: CryptOpt.StringOperation): asm[] => {
  assertStringNames(o);
  Paul.currentInstruction = o;
  switch (o.operation) {
    case "*":
      return mul(o);
    case "mulx":
      return mulx(o);
    case "+":
    case "addcarryx": {
      RegisterAllocator.getInstance().initNewInstruction(o);
      let comment = Logger.log(
        [
          `\n`,
          `; add:`,
          `; ${RegisterAllocator.getInstance().flagStateString()}`,
          `; r:${o.name[0]},f:${o.name[1] ?? "_"}<-add(${o.arguments.join(",")})`,
        ].join("\n"),
      );
      comment ??= "";
      const instructions = add(o);

      return [comment, ...RegisterAllocator.getInstance().pres, ...instructions];
    }
    case "-":
    case "subborrowx": {
      RegisterAllocator.getInstance().initNewInstruction(o);
      let comment = Logger.log(
        [
          `\n`,
          `; sub:`,
          `; ${RegisterAllocator.getInstance().flagStateString()}`,
          `; r:${o.name[0]},f:${o.name[1] ?? "_"}<-sub(${o.arguments.join(",")})`,
        ].join("\n"),
      );
      comment ??= "";

      const instructions = sub(o);
      return [comment, ...RegisterAllocator.getInstance().pres, ...instructions];
    }
    case "<<":
      return shiftLeft(o);
    case "shrd":
    case "sar": // because if its a u128, we need to to an shrd, too
      return shiftRightDouble(o);
    case ">>":
      return shiftRight(o);
    case "ror":
      return ror(o);
    case "|":
    case "&":
    case "^":
      return bitwiseOp(o);
    case "=":
      return mov(o);
    case "cmovznz":
      return conditionalMovZNZ(o);
    case "~":
      return not(o);
    case "limb":
      return limb(o);
    case "zext":
      return zext(o);
    case "cmp":
      return cmp(o);
    default:
      throw new Error(`Alarm. Not implemented. ${JSON.stringify(o)}`);
  }
};
