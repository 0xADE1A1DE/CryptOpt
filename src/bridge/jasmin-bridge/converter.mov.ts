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
import Logger from "@/helper/Logger.class";
import { resolvePointerRead, resolvePointerWrite } from "./converter.helper";

const movs = new Map<RegExp, (a: NonNullable<RegExpMatchArray["groups"]>) => Fiat.DynArgument[]>();

//*************
//  ArrayInit(i_z3.4979); /* length=32 u8[32] */
//*************
// can be skipped in terms of emitting DynArgument

movs.set(/\s+ArrayInit\((?<dest>[\w.]+)\);.*/, (g) => {
  Renamer.initArray(g.dest);
  return [];
});

// helper function for the below
const save: (a: NonNullable<RegExpExecArray["groups"]>) => Fiat.DynArgument[] = (g) => {
  Renamer.addAlias(g.src, g.dest);

  return [];
};

//*************
//  pr_s.4978 = pr.856; /* u64 */
//  h#0.5032 = f#0.4983; /* u64 */'.
//*************
movs.set(/\s+(?<dest>[\w.#]+) = (?<src>[\w.#]+);.*/, save);

//************* storing var to stack array (aka typcial spill)
//  hs.5023[u64 0 ] = h#0.5022; /* u64 */
//*************
movs.set(/\s+(?<dest>[\w.]+\[u64 \d+ \]) = (?<src>[\w.#]+);.*/, save);

//************* reading from stack array (aka typical unspill)
//  h#0.4998 = fs.4992[u64 0 ]; /* u64 */
//*************
movs.set(/\s+(?<dest>[\w.#]+) = (?<src>[\w.]+\[u64 \d+ \]);.*/, save);

//************* saving const
//  _38.5245 = ((64u) 38); /* u64 */
//*************

movs.set(/\s+(?<dest>[\w.#]+) = \(\(64u\) (?<const>\d+)\);.*/, (g) => {
  const d = Renamer.rename(g.dest);

  const s = `0x${Number(g.const).toString(16)}` as Fiat.HexConstant;

  return [
    {
      operation: "=",
      datatype: "u64",
      name: [d],
      arguments: [s],
      parameters: { comment: `${d}<-${s}, formerly ${g.dest}<-${g.src}` },
    },
  ];
});

//************* stackArray <- argN[i]
//  i_init.4982[u64 0 ] = (u64)[pinit.857 + ((64u) 0)]; /* u64 */
//  f#0.4983 = (u64)[pz2.859 + ((64u) 0)]; /* u64 */
//*************
movs.set(/\s+(?<dest>[^=]+)= \(u64\)\[(?<src>[\w.]+) \+ \(\(64u\) (?<si>\d+)\)\];.*/, (g) => {
  const s = resolvePointerRead(g.src, g.si); // arg1[0]
  const d = g.dest.trim(); // i_init.4982[u64 0]
  Renamer.addAlias(s, d);

  return [];
});

//************* outN[i] <-  stack-Array or variable
//  (u64)[pr.6535 + ((64u) 0)] = o_x2.6532[u64 0 ]; /* u64 */
//  (u64)[pr.6535 + ((64u) 32)] = o_z2r#0.6531; /* u64 */
//*************
movs.set(/\s+\(u64\)\[(?<base>[\w.]+) \+ \(\(64u\) (?<off>\d+)\)\] = (?<src>[^;]+);.*/, (g) => {
  const d = resolvePointerWrite(g.base, g.off);
  const s = Renamer.rename(g.src); // includes lookup

  return [
    {
      operation: "=",
      datatype: "u64",
      name: [d],
      arguments: [s],
      parameters: { comment: `${d}<-${s}, formerly ${g.dest}<-${g.src}` },
    },
  ];
});

export { movs };
