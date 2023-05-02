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

import { CryptOpt, Fiat } from "@/types";
import { Renamer } from "./renamer.class";

const misc = new Map<RegExp, (a: NonNullable<RegExpMatchArray["groups"]>) => Fiat.DynArgument[]>();

//*************
//  (_of_.4993, _cf_.4994, _sf_.4995, _ /* bool */, _zf_.4996, z.4997) = #set0_64();
//  (of.5144, cf.5145, _ /* bool */, _ /* bool */, _ /* bool */, z.5146) = #set0_64(); /* :k */
//*************

misc.set(/\s+(?<dest>[()\w.,/* ]+) = #set0_64\(\);.*/, (g) => {
  const zero_out = g.dest
    .replaceAll("/* bool */", "")
    .replaceAll(/\(|\)/g, "")
    .split(",")
    .map((p) => p.trim())
    .filter((p) => !p.startsWith("_"));

  if (zero_out.length === 0) {
    throw new Error(
      `double check here, why are we even here? What do we want from life. What is this supposed to do... so many questions...`,
    );
  }

  return zero_out.map(Renamer.rename).map((d) => ({
    operation: "=",
    datatype: "u64",
    name: [d],
    arguments: ["0x0"],
    parameters: { comment: `${d}<-0, formerly ${g.dest}<- #set0_64` },
  }));
});
// yeah. must have groups...
misc.set(/\s+(?<ret>return)\s*\(\);}.*/, (_g) => {
  return [];
});
export { misc };
