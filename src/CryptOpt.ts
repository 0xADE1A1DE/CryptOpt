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

import { exec } from "child_process";
import { hostname } from "os";
import { resolve } from "path";

import {
  cy,
  env,
  generateResultFilename,
  gn,
  parsedArgs,
  PRINT_EVERY,
  rd,
  re,
  SI,
  writeString,
} from "@/helper";
import { registerExitHooks } from "@/helper/process";
import { Model } from "@/model";
import { Optimizer } from "@/optimizer";
import { sha1Hash } from "@/paul";
import type { CryptoptGlobals, OptimizerArgs } from "@/types";

const { single, bets, betRatio, curve, method, verbose } = parsedArgs;
if (parsedArgs.resultDir == "") {
  parsedArgs.resultDir = resolve(process.cwd(), "results");
}

// GENERAL INITIALIZATION
if (!verbose) {
  console.log = () => {
    // intentionally empty
  };
}

// to get the symbol name, we create new anonymous optimizer.
const symbolname = new Optimizer(parsedArgs).getSymbolname(true);
registerExitHooks({ ...parsedArgs, symbolname });

type RunResult = { statefile: string; ratio: number; convergence: string[] };

async function allBets(evals: number, bets: number): Promise<RunResult[]> {
  const runRes = [] as RunResult[];

  let derivedSeed = parsedArgs.seed;

  for (let i = 1; i <= bets; i++) {
    derivedSeed = sha1Hash(derivedSeed);

    const args = {
      ...parsedArgs,
      evals,
      logComment: `${parsedArgs.logComment} ${i}/${bets}`,
      seed: derivedSeed,
    };
    console.log("running a bet with ", JSON.stringify(args, undefined, 2));
    const runResult = await run(args);
    runRes.push(runResult);
  }

  runRes.sort((a, b) => b.ratio - a.ratio); // note: reverse sort

  console.log(
    [
      `Done finding good SEEEDs.`,
      `Starting final optimization now.`,
      `Starting with a ratio of: ${cy}${runRes[0].ratio}${re}`,
    ].join(" "),
  );
  return runRes;
}

async function run(args: OptimizerArgs): Promise<RunResult> {
  let optimizer: Optimizer;
  try {
    optimizer = new Optimizer(args);
  } catch (e) {
    console.error(`CryptOpt-Error while creating the optimizer\n`, e);
    process.exit(1000);
  }
  try {
    await optimizer.optimise();
  } catch (e) {
    console.error(`CryptOpt-Error while optimising\n`, e);
    process.exit(1000);
  }

  const [statefile] = generateResultFilename({ ...args, symbolname: optimizer.getSymbolname() });
  Model.persist(statefile);
  const { ratio, convergence } = Model.getState();
  return { statefile, ratio, convergence };
}

let runResults: RunResult[];

const allocatedToPopulation = parsedArgs.evals * betRatio; // total for population
const offspringEvals = allocatedToPopulation / bets; // each of the offspring

if (single) {
  const fullArgs = {
    ...parsedArgs,
    logComment: `${parsedArgs.logComment} run`,
  };
  const singleRun = await run(fullArgs);
  runResults = [singleRun];
} else {
  runResults = await allBets(offspringEvals, bets);
  const [bestRun] = runResults;
  const fullArgs = {
    ...parsedArgs,
    logComment: `${parsedArgs.logComment} run`,
    evals: parsedArgs.evals - allocatedToPopulation,
    readState: bestRun.statefile,
  };
  const lastRun = await run(fullArgs);
  runResults.push(lastRun);
}

// OPTIMIZATION DONE.
// NOW Analyse and write files for graphing.

const times: CryptoptGlobals["time"] = { validate: 0, generateCryptopt: 0, generateFiat: 0 };

const parsed = Model.getState();

if ("time" in parsed) {
  const { validate, generateCryptopt, generateFiat } = parsed.time;
  times.validate += validate;
  times.generateFiat += generateFiat;
  times.generateCryptopt += generateCryptopt;
}

const lastConvergence = runResults[runResults.length - 1].convergence;
const longestDataRow = lastConvergence.length;

const spaceSeparated = runResults.reduce((arr, { convergence }) => {
  // in order to create a matrix for gnuplot, we need to pad with " ?"
  const paddingAmount = longestDataRow - convergence.length;
  const paddingArray = new Array(paddingAmount).fill("  ?   ");
  arr.push(convergence.concat(paddingArray).join(" "));
  return arr;
}, [] as string[]);

const [datFileFull, gpFileFull, pdfFileFull] = generateResultFilename({ ...parsedArgs, symbolname }, [
  ".dat",
  ".gp",
  ".pdf",
]);

writeString(datFileFull, spaceSeparated.join("\n"));
process.stdout.write(`Wrote ${cy}${datFileFull}${re} ${spaceSeparated.length}x${longestDataRow}`);

console.log(JSON.stringify(times));
const title = [
  `${curve.replace("_", "\\\\_")}-${method}`,
  single ? "Single Run" : `Restarts^{${bets}}_{${(offspringEvals / parsedArgs.evals) * 100} %}`,
  `#Mutations ${SI(parsedArgs.evals)}`,
  new Date().toISOString(),
  hostname(),
  Object.entries(times).map((k, v) => `Time for ${k}: ${(v / 60).toFixed(2)}min`),
].join(", ");

writeString(
  gpFileFull,
  [
    `#!/usr/bin/env gnuplot\n`,
    `set title "${title}"`,
    "# missing values are the ones from earlier-finished seed-searching evaluations",
    `set datafile missing "?"\n`,
    "# setting output sizes and filename",
    "set terminal pdf size 80cm,20cm",
    `set output '${pdfFileFull}'\n`,
    "# set x",
    'set xlabel "Mutation"',
    "set logscale x 10\n",
    "# set y",
    // "set yrange [0:2]\n",
    `set ylabel "ratio: '${env.CC}-compiled cycle lib'/'cycle good' "\n`,
    "# remove legend",
    "unset key\n",
    "# and plot the matrix with line colors, and a line at y=1 with color 0 (gre)",
    `plot "${datFileFull}" matrix using ($1*${PRINT_EVERY}):3:2 linecolor variable with lines, 1 lc 0`,
  ].join("\n"),
);

process.stdout.write(" Gen Pdf...");
const d = (chunk: Buffer | string) => {
  const str = chunk.toString();
  if (
    !str.includes("line 22: ") &&
    !str.includes(gpFileFull) &&
    str !== "\n" &&
    !str.includes("warning: ") &&
    !str.includes("matrix contains missing or undefined values")
  ) {
    process.stdout.write(str);
  }
};

const child = exec(`gnuplot ${gpFileFull}`);
child.stdout?.on("data", d);
child.stderr?.on("data", d);
child.on("close", (code) => {
  process.stdout.write(`${code == 0 ? gn : rd + "not"} OK ${re}\n`);
});
