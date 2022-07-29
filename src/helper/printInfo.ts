import os from "os";

import { cy, re } from "./constants";
import { env } from "./env";
import { shouldProof, SI } from "./lamdas";

const { CC, CFLAGS } = env;
export function printStartInfo({
  resultsPath,
  bridge,
  curve,
  method,
  seed,
  evals,
  cyclegoal,
  skipProof,
}: {
  resultsPath: string;
  bridge?: string;
  curve: string;
  method: string;
  seed: number;
  evals: number;
  cyclegoal: number;
  skipProof: boolean;
}) {
  process.stdout.write(
    [
      `\nStart`,
      `on brg-curve-method >>${cy}${bridge}-${curve}-${method}${re}<<`,
      `>>${cy}${shouldProof({ bridge, skipProof }) ? "with" : "without"} proofing${re} correct<<`,
      `on cpu >>${cy}${os.cpus()[0].model}${re}<<`,
      `writing results to>>${cy}${resultsPath}${re}<<`,
      `with seed >>${cy}${seed}${re}<<`,
      `for >>${cy}${SI(evals)}${re}<< evaluations`,
      `against CC>>${cy}${CC} ${CFLAGS}${re}<<`,
      `with cycle goal>>${cy}${cyclegoal}${re}<< for each measurement`,
      `on host>>${cy}${os.hostname()}${re}<<`,
      `with pid>>${cy}${process.pid}${re}<<`,
      `starting @>>${cy}${new Date().toISOString()}${re}<<\n`,
    ].join(" "),
  );
}
