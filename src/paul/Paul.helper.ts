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

import { createHash } from "crypto";
// this is used for the state_hashing. Number->random other Number
export function sha1Hash(input: number): number {
  const shaObj = createHash("sha1", { encoding: "utf8" });
  shaObj.update(input.toString());
  // sha-1 has 160 bits -> 40 nibbles.
  // we can only count to 2^53 in JS safely, so we use Floor(53/4)=13 nibbles
  const hash = shaObj.digest("hex").substring(40 - 13);
  return Number(`0x${hash}`);
}

// here we actually calculate sha256Hash'es from a string.
export function sha256Hash(input: string): string {
  return createHash("sha256", { encoding: "utf8" }).update(input).digest("hex");
}
