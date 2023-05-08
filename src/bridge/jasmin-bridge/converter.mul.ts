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

import Logger from "@/helper/Logger.class";
import { Fiat } from "@/types";

import { Renamer } from "./renamer.class";

const muls = new Map<RegExp, (a: NonNullable<RegExpMatchArray["groups"]>) => Fiat.DynArgument[]>();

//*************
// (t#1.5563, t1r#0.5564) = #MULX_64(fx.5562, fx.5562); /* :k */
//  (h#1.5148, h#0.5149) = #MULX_64(f0.5147, g#0.5139); /* :k */
//*************

muls.set(/\s+\((?<hi>[^,]+), (?<lo>[^)]+)\) = #MULX_64\((?<arg0>[^,]+), (?<arg1>[^)]+)\);.*/, (g) => {
  Logger.log("trying to mulx");

  const [arg0, arg1] = [g.arg0, g.arg1].map(Renamer.rename);
  const [hi, lo] = [g.hi, g.lo].map(Renamer.rename);

  return [
    {
      operation: "mulx",
      datatype: "u64",
      name: [lo, hi],
      arguments: [arg0, arg1],
      parameters: {
        comment: `${hi},${lo}<-${arg0}x${arg1}, formerly ${g.hi},${g.lo}=#MULX_64(${g.arg0},${g.arg1})`,
      },
    },
  ];
});

//*************
//   (_ /* bool */, _ /* bool */, _ /* bool */, _ /* bool */, _ /* bool */, lo.6032) = #IMULri_64(r#0.6031, ((64u) 38)); /* :k */
//*************

muls.set(/\s+\((_ \/\* bool \*\/, )+(?<lo>[^)]+)\) = #IMULri_64(?<src>[^;]+);.*/, (g) => {
  Logger.log("trying to mul");

  const [arg0, arg1] = g.src
    .substring(1, g.src.length - 1) // outer parens
    .split(",")
    .map((p) => p.trim())
    .map((p) => {
      const srcG = p.match(/\(\(64u\) (?<const>\d+)\)/)?.groups;
      if (srcG) {
        return `0x${Number(srcG.const).toString(16)}` as Fiat.HexConstant;
      } else {
        return Renamer.rename(p); // includes lookup of stack-array syntax
      }
    });

  const lo = Renamer.rename(g.lo);

  return [
    {
      operation: "*",
      datatype: "u64",
      name: [lo],
      arguments: [arg0, arg1],
      parameters: {
        comment: `${lo}<-${arg0}x${arg1}, formerly ${g.lo}=#IMULri_64(${g.src})`,
      },
    },
  ];
});

export { muls };
