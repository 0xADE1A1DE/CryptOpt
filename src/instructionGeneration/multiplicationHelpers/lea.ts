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

import { AllocationFlags } from "@/enums";
import { isImm, TEMP_VARNAME } from "@/helper";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

export function mul_imm_lea(c: CryptOpt.StringOperation): asm[] {
  const ra = RegisterAllocator.getInstance();
  ra.initNewInstruction(c);
  const imm = c.arguments[1];
  if (!isImm(imm)) {
    throw new Error("arg[1] must be an immediate value");
  }
  const hex = imm as CryptOpt.HexConstant;
  switch (hex) {
    case "0x2":
    case "0x3":
    case "0x4":
    case "0x5":
    case "0x8":
    case "0xa":
    case "0x10":
      return mul_lea(c, hex);
    case "0x13":
      return mul_tmp_lea(c, hex);
    default:
      throw new Error("unsupported immediate value");
  }
}
//*without helper variable*/
export function mul_lea(c: CryptOpt.StringOperation, hex: CryptOpt.HexConstant): asm[] {
  const ra = RegisterAllocator.getInstance();
  const factor = c.arguments[0];
  const allocation = ra.allocate({
    oReg: c.name,
    in: [factor],
    allocationFlags: AllocationFlags.DISALLOW_XMM | AllocationFlags.DISALLOW_MEM,
  });

  const resR = allocation.oReg[0];
  const [arg0R] = allocation.in;

  const res = ra.pres;
  switch (hex) {
    case "0x2":
      res.push(`lea ${resR}, [${arg0R} + ${arg0R}]; ${c.name[0]} <- ${factor} * 2 `);
      break;
    case "0x3":
      res.push(`lea ${resR}, [${arg0R} + 2 * ${arg0R}]; ${c.name[0]} <- ${factor} * 3`);
      break;
    case "0x4":
      res.push(`lea ${resR}, [ 4 * ${arg0R}]; ${c.name[0]} <- ${factor} * 4 (or: [ 4 * ${arg0R} + 0x0])`);
      break;
    case "0x5":
      res.push(`lea ${resR}, [${arg0R} + 4 * ${arg0R}]; ${c.name[0]} <- ${factor} * 5 (by add to itself*4)`);
      break;
    case "0x8":
      res.push(`lea ${resR}, [ 8 * ${arg0R}]; ${c.name[0]} <- ${factor} * 8 (or: [ 8 * ${arg0R} + 0x0])`);
      break;
    case "0xa":
      res.push(
        `lea ${resR}, [${arg0R} + ${arg0R}]; TMP <- ${factor} * 2 (by add to itself)`,
        `lea ${resR}, [${resR} + 4 * ${resR}]; ${c.name[0]} <- TMP + TMP * 4 `,
      );
      break;
    case "0x10":
      res.push(
        `lea ${resR}, [8 * ${arg0R}]; tmp <- ${factor} * 8`,
        `lea ${resR}, [${resR} + ${resR}]; ${c.name[0]} <- tmp * 2 (${factor}*16)`,
      );
      break;
    default:
      throw new Error("unsupported immediate value");
  }
  return res;
}

//** allocates x0 to tmp store stuff*/
export function mul_tmp_lea(c: CryptOpt.StringOperation, hex: CryptOpt.HexConstant): asm[] {
  const ra = RegisterAllocator.getInstance();
  const factor = c.arguments[0];
  const allocation = ra.allocate({
    oReg: [TEMP_VARNAME, c.name[0]], //<-----difference here:
    in: [factor],
    allocationFlags: AllocationFlags.DISALLOW_XMM | AllocationFlags.DISALLOW_MEM,
  });

  const [tmp, resR] = allocation.oReg;
  const arg0R = allocation.in[0];
  const res = ra.pres;
  switch (hex) {
    case "0x13":
      res.push(
        `lea ${tmp}, [${arg0R} + 8 * ${arg0R}]; TMP <- ${factor} * 9 `,
        `lea ${resR}, [${arg0R} + 2 * ${tmp}]; ${c.name[0]} <- ${factor}*19: ${factor} + 2 * TMP = ${factor} + 2 * 9 * ${factor}`,
      );
      break;
    default:
      throw new Error("unsupported immediate value");
  }
  return res;
}
