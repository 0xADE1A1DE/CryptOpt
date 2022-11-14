/**
 * Copyright 2022 University of Adelaide
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

import { Flags } from "@/enums";
import type { CryptOpt } from "@/types";

import { LSB_MAPPING } from "./const/LSB_mapping";

export * from "./const/conf_table";
export * from "./const/llvm_mapping";
export * from "./const/mul_di_mapping";
export * from "./const/RegisterConstants";
export { LSB_MAPPING };

export const COMPILERS = ["gcc", "clang"];

export const ARG_PREFIX = "arg"; // prefix as in arg1[3]
export const OUT_PREFIX = "out"; // prefix as in out2[2]
export const ARG_REGEX = RegExp(`^(?<base>(${ARG_PREFIX}|${OUT_PREFIX})\\d+)\\[(?<offset>\\d+)\\]$`);
export const ARG_PREFIX_REGEX = RegExp(`^(${ARG_PREFIX}|${OUT_PREFIX})\\d+$`);
export const MEM_REGEX = RegExp(`\\[ (?<base>\\S{2,3}) \\+ (?<offset>0x[0-f]+) \\]`, "i");
export const XD_REGEX = /^x(\d+)(_\d)?$/;
export const IMM_VAL_PREFIX = "imm_val";
export const IMM_REGEX = /^-?(0x[0-F]+|[0-9]+)$/i;
export const TEMP_VARNAME = "x0";
export const CALLER_SAVE_PREFIX = "calSv-";

// let op be \in CHAINABLE_OPS, then A op (B op (C op D)) will be squashed to A op B op C op D
export const CHAINABLE_OPS: CryptOpt.Operation_T[] = ["-", "&", "|"];
// pretty much the last key in LSB_MAPPING. used to check if string-imm-vals are >64bit i.e. 2 limbs
export const IMM_64_BIT_IMM = `0x${Array(8 * 2)
  .fill("f")
  .join("")}` as `0x${string}`;

export const IMM_31_BIT_IMM = `0x7${Array(4 * 2 - 1)
  .fill("f")
  .join("")}` as `0x${string}`;

export const IMM_32_BIT_IMM = `0x${Array(4 * 2)
  .fill("f")
  .join("")}` as `0x${string}`;

// Those constants are the ones where we dont care about in the Dependency graph;
export const DONT_CARE_IMM_VALS = [
  "0x0",
  "-0x1",
  "-0x2" /* note, cannot use toImm here, cause we cant require "./helpers, cause it itself requires this constants filter"*/,
].concat(Object.values(LSB_MAPPING));

export const TEMP_VAR_START_NUM = 10000;
export const TEMP_VAR_END_NUM = 99999;
export const PRINT_EVERY = 10; // this is to have the correct scaling in the graph
export const LOG_EVERY = 20; // log line (to screen and file) every 20 percent, if this var it set to 20, I guess must be a multple of PRINTevery
// the higher that number, the mire logs.

export const ADX = {
  [Flags.CF]: "adcx",
  [Flags.OF]: "adox",
};

export const SETX = {
  [Flags.CF]: "setc",
  [Flags.OF]: "seto",
};

// Colors
export const rd = "\x1b[31m";
export const gn = "\x1b[32m";
export const yl = "\x1b[33m";
export const bl = "\x1b[34m";
export const pu = "\x1b[35m";
export const cy = "\x1b[36m";
export const re = "\x1b[0m";
