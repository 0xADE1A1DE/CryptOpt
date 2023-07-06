/**
 * Copyright 2023 University of Adelaide
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

import { Fiat } from "@/types";

import { Renamer } from "./renamer.class";

const and = new Map<RegExp, (a: NonNullable<RegExpMatchArray["groups"]>) => Fiat.DynArgument[]>();

//*************
// z.5011 = (z.5010 & ((64u) 38)); /* u64 */
//*************

and.set(/\s+(?<dest>[^ ]+) = \((?<src>[^ ]+) & \(\(64u\) (?<const>\d+)\)\);.*/, (g) => {
  const [d, s] = [g.dest, g.src].map((v) => Renamer.rename(v));
  const c = `0x${Number(g.const).toString(16)}` as Fiat.HexConstant;

  return [
    {
      operation: "&",
      datatype: "u64",
      name: [d],
      arguments: [s, c],
      parameters: {
        comment: `${d}=${s}&${c}, formerly ${g.dest} = (${g.src} & (u64 (${g.const})))`,
      },
    },
  ];
});
export { and };
