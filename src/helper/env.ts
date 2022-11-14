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

import { defaults } from "lodash-es";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";

export const env = defaults(process.env, {
  CC: "gcc",
  CFLAGS: "-march=native -mtune=native -O3",
});

const me = fileURLToPath(import.meta.url);

// for this to work however, one must have executed `make build` at least once.
export const datadir =
  process.env.VITEST == "true"
    ? // in test, we are in './src/helper/env.ts'
      resolve(dirname(me), "..", "..", "dist", "data")
    : // in prod, me is './dist/optimizer.helper.class-hash.js'
      resolve(dirname(me), "data");
