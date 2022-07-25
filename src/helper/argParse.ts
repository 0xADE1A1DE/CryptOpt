import { uniq } from "lodash";
import yargs from "yargs";

import { AVAILABLE_METHODS as BITCOIN_CORE_METHODS } from "@/bridge/bitcoin-core-bridge/constants";
import { BRIDGES } from "@/bridge/constants";
import { AVAILABLE_CURVES, AVAILABLE_METHODS as FIAT_METHODS } from "@/bridge/fiat-bridge/constants";
import { errorOut, ERRORS } from "@/errors";

export const parsedArgs = yargs
  .option("curve", {
    alias: "c",
    describe: `Curve to optimise a method on. Must be secp256k1, if @param bridge is 'bitcoin-core'.`,
    choices: AVAILABLE_CURVES,
    default: "curve25519",
    type: "string",
  })
  .option("method", {
    alias: "m",
    describe: "Method to optimise on.",
    choices: uniq(FIAT_METHODS.concat(BITCOIN_CORE_METHODS)),
    default: "square",
    type: "string",
  })
  .option("bridge", {
    alias: "b",
    describe: `The specified method will be searched in this order: ${BRIDGES}. If there is ambiguities, the choice of bridge can be specified. Then, the method is only searched in respective bridge. (Errors out, if not found.)\nIf --bridge gets assigned 'manual', one must specify --cFile and --jsonFile.`,
    choices: ["", ...BRIDGES],
    default: "",
    type: "string",
  })
  .option("jsonFile", {
    alias: "j",
    describe: `The file containing the JSON-CODE for the method. Only used if the --bridge manual.`,
    default: "",
    type: "string",
  })
  .option("cFile", {
    describe: `The file containing the C-CODE for the method. Only used if the --bridge manual.`,
    default: "",
    type: "string",
  })
  .option("verbose", {
    alias: "v",
    describe: "print debug info.",
    default: false,
    boolean: true,
  })
  .option("seed", {
    describe: "Seed to base the randomness on. Defaults to the current time's milliseconds.",
    default: new Date().getMilliseconds(),
    number: true,
  })
  .option("populatio", {
    describe:
      "This setting is only used when BetAndRun.ts is being called. It describes, how many seeds should be derived from the initial @param seed. For each of those seeds a part (refer to @param populatioratio) of the total @params evaluations will be used to find best seeds. For the best one, the rest of budget will be used to optimzie.",
    default: 10,
    number: true,
    min: 1,
  })
  .option("populatioratio", {
    describe:
      "This setting is only used when BetAndRun.ts is being called. It describes, how much of the total evaluation-budget is being used for each of the first generation. E.g. if this is 0.01, then 1% of @param evals will be used for each of the off springs in generation 1. (100% - 1% * @param populatio) will then be used for the best found seed. (Assume populatio is 40, then 40*1% is spent on finding good seeds, and 60% of mutations is spent on the best found.)",
    default: 0.005,
    number: true,
    min: 0,
    max: 1,
  })
  .option("skipProof", {
    alias: "n",
    describe:
      "If this is set, it will not Proof the solution correct. It will only compare the results with the C-Compiled solution.",
    boolean: true,
    default: false,
  })
  .option("readState", {
    describe: "this must be a filename to a JSON, which has a state (to, body).",
    string: true,
    demandOption: false,
  })
  .option("logComment", {
    describe: "May provide a hint of any kind to be printed on the status line",
    string: true,
    default: "---",
  })
  .option("cyclegoal", {
    describe:
      "This describes how many cycles one measurement should take. The batch size will be adjusted dynamically.",
    default: 10000,
    number: true,
  })
  .option("evals", {
    alias: "e",
    describe:
      "How many evaluations (=mutations) to execute. The higher this number the longer it'll take, but and the better the result will be. Multiplier 'k', 'M', 'T' and factors are allowed like '0.4M'; also 1e3 (1000) or 4e9 (4M) are allowed",
    default: "10k",
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
  .check(({ evals, bridge, cFile, jsonFile }) => {
    if (evals <= 0) return false;
    if (bridge == "manual" && (!jsonFile || !cFile)) return false;
    return true;
  })
  .help("help")
  .alias("h", "help")
  .wrap(Math.min(160, yargs.terminalWidth()))
  .parseSync();
