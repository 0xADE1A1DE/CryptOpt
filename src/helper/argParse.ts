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

import { uniq } from "lodash-es";
import yargs from "yargs";

import {
  AVAILABLE_METHODS as BITCOIN_CORE_METHODS,
  type METHOD_T as BITCOIN_CORE_METHOD_T,
} from "@/bridge/bitcoin-core-bridge/constants";
import { BRIDGES } from "@/bridge/constants";
import {
  AVAILABLE_CURVES as FIAT_CURVES,
  AVAILABLE_METHODS as FIAT_METHODS,
  type CURVE_T as FIAT_CURVE_T,
  type METHOD_T as FIAT_METHOD_T,
} from "@/bridge/fiat-bridge/constants";
import { errorOut, ERRORS } from "@/errors";

import { FRAME_POINTER_OPTIONS, MEMORY_CONSTRAINTS_OPTIONS, ParsedArgsT } from "../types";

const y = await yargs(process.argv.slice(2));

export const parsedArgs = y
  .scriptName("./CryptOpt")
  .usage("$0 [OPTION]...")
  .option("curve", {
    string: true,
    alias: "c",
    default: "curve25519",
    describe: `Curve to optimise a method on. No applicable, if manual/bitcoin-core bridges are used.`,
    choices: FIAT_CURVES,
  })
  .option("method", {
    string: true,
    alias: "m",
    default: "square",
    describe: "Method to optimise on.",
    choices: uniq(FIAT_METHODS.concat(BITCOIN_CORE_METHODS)),
  })
  .option("bridge", {
    string: true,
    default: "fiat",
    describe: `If --bridge gets assigned 'manual', one must specify --cFile and --jsonFile, rather than curve/method.`,
    choices: BRIDGES,
  })
  .option("jsonFile", {
    string: true,
    alias: "j",
    default: "",
    describe: `The file containing the JSON-CODE for the method. Only used if the --bridge manual.`,
  })
  .option("cFile", {
    string: true,
    alias: "f",
    default: "",
    describe: `The file containing the C-CODE for the method. Only used if the --bridge manual.`,
  })
  .option("verbose", {
    boolean: true,
    alias: "v",
    default: false,
    describe: "Print debug info. (Compile with `DEBUG=1 make`)",
  })
  .option("seed", {
    number: true,
    alias: "s",
    default: Date.now(),
    describe: "Seed to base the randomness on. Defaults to the current UTC timestamp in ms.",
  })
  .option("bets", {
    number: true,
    alias: "b",
    default: 10,
    describe:
      "It describes how many seeds should be derived from the initial @param seed. For each of those seeds a part (refer to @param betRatio) of the total @param evals will be used to find best seeds. For the best one, the rest of evaluation budget will be used to optimzie.",
    min: 1,
  })
  .option("betRatio", {
    number: true,
    alias: "r",
    default: 0.2,
    describe:
      "It describes how much of the total evaluation-budget is being used for the bet part. E.g. if this is 0.2, then 20% of @param evals will be used for used for finding a good seed, and 80% of mutations is spent on the best found.",
    min: 0,
    max: 1,
  })
  .option("single", {
    boolean: true,
    default: false,
    describe: "Skips the bet-part. Shortcut for --bets=1 --betRatio=1 ",
  })
  .option("resultDir", {
    string: true,
    describe:
      "Where to safe the result-files (assembly, pdfs, ...). Defaults to a new `results`-directory in the cwd, if not given or empty string.",
    required: false,
    default: "",
  })
  .option("proof", {
    default: true,
    describe:
      "If this is set, it will proof the solution correct with fiat-bridge in addition to comparing the results with the C-compiled solution. Disable with --no-proof",
    boolean: true,
  })
  .option("xmm", {
    alias: "x",
    default: false,
    describe:
      "If this is set, CryptOpt will optimize considering to spill into vector registers rather than spilling solely into memory.",
    boolean: true,
  })
  .option("preferXmm", {
    alias: "X",
    default: false,
    describe:
      "If this is set, CryptOpt will prefer spilling into vector registers as long as they are available, then start spilling into memory. Must specify --xmm switch, too. It will not try to optimize on it. (i.e. The first 16 values to be spilled will be spilled into XMMs, the rest into memory.)",
    boolean: true,
  })
  .option("readState", {
    string: true,
    describe: "this must be a filename to a JSON, which has a state (to, body).",
    demandOption: false,
  })
  .option("startFromBestJson", {
    boolean: true,
    default: false,
    describe: "Will check the given/current resultDir for the best JSON-file and continues from there.",
  })
  .option("logComment", {
    string: true,
    default: "",
    describe: "May provide a hint of any kind to be printed on the status line",
  })
  .option("cyclegoal", {
    number: true,
    default: 10000,
    describe:
      "This describes how many cycles one measurement should take. The batch size will be adjusted dynamically.",
  })
  .option("evals", {
    alias: "e",
    default: "10k",
    describe:
      "How many evaluations (=mutations) to execute. The higher this number the longer it'll take, but and the better the result will be. Multiplier 'k', 'M', 'T' and factors are allowed like '0.4M'; also 1e3 (1000) or 4e9 (4M) are allowed",
    coerce: (evals: number | string) => {
      const attemptcast = Number(evals);
      if (!isNaN(attemptcast)) {
        return attemptcast;
      }
      if (typeof evals === "number") {
        errorOut(ERRORS.parameterParseFail);
      }
      const multipliers = ["k", "M", "T"];
      const idx = multipliers.findIndex((m) => evals.endsWith(m));
      if (idx == -1) {
        errorOut(ERRORS.parameterParseFail);
      }
      return Math.pow(1000, idx + 1) * Number(evals.substring(0, evals.length - 1));
    },
  })
  .check(({ evals, bridge, cFile, jsonFile, method, curve }) => {
    if (evals <= 0) {
      throw new Error("--evals must be >0");
    }
    if (bridge == "manual" && (!jsonFile || !cFile)) {
      throw new Error("Bridge is set to manual, but either json or c file is not specified.");
    }
    if (["", "fiat"].includes(bridge)) {
      if (!FIAT_METHODS.includes(method as FIAT_METHOD_T)) {
        throw new Error(`Bridge is Fiat; the specified method '${method}' is not available.`);
      }

      if (!FIAT_CURVES.includes(curve as FIAT_CURVE_T)) {
        throw new Error(`Bridge is Fiat; the specified curve '${curve}' is not available.`);
      }
    }
    if (bridge == "bitcoin-core") {
      if (!BITCOIN_CORE_METHODS.includes(method as BITCOIN_CORE_METHOD_T)) {
        throw new Error(`Bridge is bitcoin-core. The specified method '${method}' not available.`);
      }
    }
    return true;
  })
  .option("framePointer", {
    default: "omit",
    string: true,
    describe:
      "Defines how `rbp` is used. 'omit' (default) will spill the value when needed, use the registers as a GP register, and unspill in the function epilogue (similar to '-fomit-frame-pointer'). 'save' will save the old value on stack, then save the old value of `rsp` in `bbp`. In the function epilogue, will restore rbp (similar to -fno-omit-frame-pointer). 'constant' pretend `rbp` does not exist.",
    choices: FRAME_POINTER_OPTIONS,
  })
  .option("memoryConstraints", {
    default: "none",
    string: true,
    describe:
      "Defines if memory reads are contraint. 'none' will not enforce anything. All reads are permitted at any time. 'all' enforces that no read from any `argN[n]` happens after any write to `outN[n]`. 'out1-arg1' enforces that no read from arg1[n] is permitted after `out1[n]` has been written (essentially permits mul(r,r,x) and sq(a,a); but not if elemets overlap but not align. (e.g. mul(r+1,r,x)))",
    choices: MEMORY_CONSTRAINTS_OPTIONS,
  })
  .help("help")
  .alias("h", "help")
  .wrap(Math.min(160, y.terminalWidth()))
  .parseSync() as ParsedArgsT;
