import os from "os";

import { parsedArgs } from "./argParse";
import { cy, re } from "./constants";
import { env } from "./env";
import { shouldProof, SI } from "./lamdas";

const { CC, CFLAGS } = env;
export function printStartInfo(resultspath: string) {
  process.stdout.write(
    [
      `Start`,
      `on brg-curve-method >>${cy}${parsedArgs.bridge}-${parsedArgs.curve}-${parsedArgs.method}${re}<<`,
      `>>${cy}${shouldProof(parsedArgs) ? "with" : "without"} proofing${re} correct<<`,
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
}
