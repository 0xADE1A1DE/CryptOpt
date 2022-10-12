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

import os from "os";

import type { OptimizerArgs } from "@/types";

import { cy, re } from "./constants";
import { env } from "./env";
import { shouldProof, SI } from "./lamdas";

const { CC, CFLAGS } = env;
export function printStartInfo({
  resultDir,
  bridge,
  seed,
  evals,
  cyclegoal,
  proof,
  symbolname,
}: Pick<OptimizerArgs, "resultDir" | "bridge" | "seed" | "evals" | "cyclegoal" | "proof"> & {
  symbolname: string;
}) {
  process.stdout.write(
    [
      `\nStart`,
      `on brg/symbolname>>${cy}${bridge}/${symbolname}${re}<<`,
      `>>${cy}${shouldProof({ bridge, proof }) ? "with" : "without"} proofing${re} correct<<`,
      `on cpu >>${cy}${os.cpus()[0].model}${re}<<`,
      `writing results to>>${cy}${resultDir}${re}<<`,
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
