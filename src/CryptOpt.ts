import { exec } from "child_process";
import fs from "fs";
import os from "os";

import { cy, env, generateStateFileName, gn, parsedArgs, PRINT_EVERY, rd, re, SI } from "@/helper";
import { registerExitHooks } from "@/helper/process";
import { Model } from "@/model";
import { Optimiser } from "@/optimizer";
import { sha1Hash } from "@/paul";
import type { CryptoptGlobals } from "@/types";

const { single, bets, betRatio, seed, curve, method, evals, verbose } = parsedArgs;

// GENERAL INITIALIZATION
if (!verbose) {
  console.log = () => {
    // intentionally empty
  };
}
registerExitHooks(seed);

type RunResult = { statefile: string; ratio: number; convergence: string[] };

function bet(evals: number, bets: number): RunResult[] {
  const runRes = [] as RunResult[];

  let derivedSeed = seed;

  for (let i = 1; i <= bets; i++) {
    derivedSeed = sha1Hash(derivedSeed);

    const args = Object.assign({}, parsedArgs, {
      evals,
      logComment: `${i}/${bets}`,
      seed: derivedSeed,
    });
    const runResult = run(args);
    runRes.push(runResult);
  }

  runRes.sort((a, b) => b.ratio - a.ratio); // note: reverse sort

  console.log(
    [
      `Done finding good SEEEDs.`,
      `Starting final optimistaion now.`,
      `Starting with a ratio of: ${cy}${runRes[0].ratio}${re}`,
      // `on statefile ${cy}${bestStateFileYet}${re}`,
    ].join(" "),
  );
  return runRes;
}

function run(args: any): RunResult {
  try {
    new Optimiser(args).optimise();
  } catch (e) {
    console.error(`Cryptopt-Error while optimising:\n`, e);
    process.exit(1000);
  }

  const statefile = generateStateFileName(args.seed);
  Model.persist(statefile);
  const { ratio, convergence } = Model.getState();
  return { statefile, ratio, convergence };
}

const args = { seed, logComment: "run" };

let runResults: RunResult[];

const allocatedToPopulation = evals * betRatio; // total for population
const offspringEvals = allocatedToPopulation / bets; // each of the offspring

if (single) {
  Object.assign(args, { evals: evals });

  const singleRun = run(args);
  runResults = [singleRun];
} else {
  runResults = bet(offspringEvals, bets);
  const [bestRun] = runResults;
  Object.assign(args, { evals: evals * (1 - betRatio), readState: bestRun.statefile });
  const lastRun = run(args);
  runResults.push(lastRun);
}

// OPTIMIZATION DONE.
// NOW Analyse and write files for graphing.

const finalConvergences = [] as string[];
const times: CryptoptGlobals["time"] = { validate: 0, generateCryptopt: 0, generateFiat: 0 };
let longestDataRow = -1;

const parsed = Model.getState();

if ("time" in parsed) {
  const { validate, generateCryptopt, generateFiat } = parsed.time;
  times.validate += validate;
  times.generateFiat += generateFiat;
  times.generateCryptopt += generateCryptopt;
}

const convergence = parsed.convergence;
finalConvergences.push(convergence.join(" "));
longestDataRow = Math.max(longestDataRow, convergence.length);

const spaceSeparated = runResults
  .reduce((arr, { convergence }) => {
    // in order to create a matrix for gnuplot, we need to pad with " ?"
    const paddingAmount = longestDataRow - convergence.length;
    const paddingArray = new Array(paddingAmount).fill("?");
    arr.push(convergence.concat(paddingArray).join(" "));
    return arr;
  }, [] as string[])
  // have the final convergences at the end, so that it overwrites the earlier one. (that way it will be the same color.)
  // For some eager programmer, feel free to find the particular rows of finalConvergences in ratios and delete it.
  .concat(finalConvergences);
const finalStateFile = generateStateFileName(seed);

const datFileFull = `${finalStateFile}.dat`;

fs.writeFileSync(datFileFull, spaceSeparated.join("\n"));
process.stdout.write(`Wrote ${cy}${datFileFull}${re} ${spaceSeparated.length}x${longestDataRow}`);

const gpFile = `${datFileFull}.gp`;
const title = [
  `${curve.replace("_", "\\\\_")}-${method}`,
  single || `Restarts^{${bets}}_{${(offspringEvals / evals) * 100}%}`,
  `#Mutations ${SI(evals)}`,
  new Date().toISOString(),
  os.hostname(),
  Object.entries(times).map((k, v) => `Time for ${k}: ${(v / 60).toFixed(2)}min`),
].join(", ");

fs.writeFileSync(
  gpFile,
  [
    `#!/usr/bin/env gnuplot\n`,
    `set title "${title}"`,
    "# missing values are the ones from earlier-finished seed-searching evaluations",
    `set datafile missing "?"\n`,
    "# setting output sizes and filename",
    "set terminal pdf size 80cm,20cm",
    `set output '${datFileFull}.pdf'\n`,
    "# set x",
    'set xlabel "Mutation"',
    "set logscale x 10\n",
    "# set y",
    // "set yrange [0:2]\n",
    `set ylabel "ratio: '${env.CC}-compiled cycle lib'/'cycle good' "\n`,
    "# remove legend",
    "unset key\n",
    "# and plot the marix with linecolors, and a line at y=1 with color 0 (gre)",
    `plot "${datFileFull}" matrix using ($1*${PRINT_EVERY}):3:2 linecolor variable with lines, 1 lc 0`,
  ].join("\n"),
  { mode: 0o700 },
);

process.stdout.write(" Gen Pdf...");
const d = (chunk: Buffer | string) => {
  const str = chunk.toString();
  if (
    !str.includes("line 22: ") &&
    !str.includes(gpFile) &&
    str !== "\n" &&
    !str.includes("warning: ") &&
    !str.includes("matrix contains missing or undefined values")
  ) {
    process.stdout.write(str);
  }
};

const child = exec(`gnuplot ${gpFile}`);
child.stdout?.on("data", d);
child.stderr?.on("data", d);
child.on("close", (code) => {
  process.stdout.write(`${code == 0 ? gn : rd + "not"} OK ${re}\n`);
});
