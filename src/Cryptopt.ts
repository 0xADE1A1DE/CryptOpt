#!/usr/bin/env -S node -r "ts-node/register/transpile-only" -r "tsconfig-paths/register"
import os from "os";

import { cy,env,generateResultsPath,generateStateFileName,parsedArgs,re,SI } from "@/helper";
import { Model } from "@/model";
import { Optimiser, shouldProof } from "@/optimizer";
import { Paul } from "@/paul";

const { CC, CFLAGS } = env;

Paul.seed = parsedArgs.seed as number;

if (parsedArgs.silent) {
  console.log = () => {
    // intentionally empty
  };
}
const resultspath = generateResultsPath(parsedArgs);
const stateFileName = generateStateFileName(parsedArgs);

process.on("exit", (exitcode: number) => {
  if (exitcode == 0) {
    process.stdout.write(`\nDone Success.${cy}${new Date().toISOString()}${re}`);
  } else {
    process.stderr.write(`\nDone with code: ${exitcode}\n`);
  }
  Model.persist(stateFileName);
  process.stdout.write("exiting.");
  process.exit(exitcode);
});

process.on("SIGINT", (signal: "SIGINT") => {
  process.stdout.write(`\ncaught ${signal}`);
  process.exit(13);
});

process.on("SIGTERM", (signal: "SIGTERM") => {
  process.stdout.write(`\ncaught ${signal}`);
  process.exit(13);
});

process.stdout.write(
  [
    `Start`,
    `on brg-curve-method >>${cy}${parsedArgs.bridge}-${parsedArgs.curve}-${parsedArgs.method}${re}<<`,
    `>>${cy}${shouldProof(parsedArgs) ? "with" : "without"} proofing${re} correct<<`,
    `appending >>${cy}${parsedArgs.append}${re}<<`,
    `on cpu >>${cy}${os.cpus()[0].model}${re}<<`,
    `writing results to>>${cy}${resultspath}${re}<<`,
    `with seed >>${cy}${parsedArgs.seed}${re}<<`,
    `for >>${cy}${SI(parsedArgs.evals)}${re}<< evaluations`,
    `against CC>>${cy}${CC} ${CFLAGS}${re}<<`,
    `with cyclegoal>>${cy}${parsedArgs.cyclegoal}${re}<< for each measurement`,
    `on host>>${cy}${os.hostname()}${re}<<`,
    `with pid>>${cy}${process.pid}${re}<<`,
    `starting @>>${cy}${new Date().toISOString()}${re}<<\n`,
  ].join(" "),
);

try {
  new Optimiser(resultspath, parsedArgs).optimise();
} catch (e) {
  console.error(`Cryptopt-Error while optimising:\n`);
  console.error(e);
  process.exit(1000);
}
