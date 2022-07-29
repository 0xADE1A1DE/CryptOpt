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

import { Model } from "@/model";

import { cy, re } from "./constants";
import { generateResultFilename } from "./path";

export function registerExitHooks(seed: number) {
  const [stateFileName] = generateResultFilename(seed);

  process.on("exit", (exitcode: number) => {
    if (exitcode == 0) {
      process.stdout.write(`\nDone Success. ${cy}${new Date().toISOString()}${re}\n`);
    } else {
      process.stderr.write(`\nDone with code: ${exitcode}\n`);
    }
    Model.persist(stateFileName);
    process.stdout.write("exiting.\n");
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
}
