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

import Logger from "@/helper/Logger.class";
import { Fiat } from "@/types";

import { Renamer } from "./renamer.class";

const addsub = new Map<RegExp, (a: NonNullable<RegExpMatchArray["groups"]>) => Fiat.DynArgument[]>();

//*************
// (cf.5002, h#0.5003) = #sbb_64(h#0.4998, f#0.4983, false); /* :k */
// (cf.5018, h#3.5019) = #adc_64(h#3.5009, ((64u) 0), cf.5016); /* :k */'.
// (cf.5036, h#0.5037) = #adc_64(h#0.5032, g.5026[u64 0 ], false); /* :k */
// (cf.5152, h#1.5153) = #ADCX_64(h#1.5148, lo.5151, cf.5145); /* :k */
// (of.5167, h#1.5168) = #ADOX_64(h#1.5153, lo.5166, of.5144); /* :k */
//*************

addsub.set(/\s+\((?<carry>[^,]+), (?<dest>[^)]+)\) = #(?<meth>sbb|adc|ADCX|ADOX)_64(?<src>[^;]+);.*/, (g) => {
  Logger.log("trying to addsubC");
  const [arg0, arg1, cin] = g.src
    .substring(1, g.src.length - 1) // outer parens
    .split(",")
    .map((p) => p.trim())
    .map((p) => {
      if (p === "((64u) 0)" || p === "false") {
        return "0x0" as Fiat.HexConstant;
      } else {
        return Renamer.rename(p); // includes lookup of stack-array syntax
      }
    });

  const [cout, out] = [g.carry, g.dest].map((v) => {
    if (v.startsWith("_")) {
      return "_";
    } else {
      return Renamer.rename(v);
    }
  });

  const operation = g.meth == "sbb" ? "subborrowx" : "addcarryx";
  return [
    {
      operation,
      datatype: "u64",
      name: [out, cout],
      arguments: [cin, arg0, arg1],
      parameters: {
        comment: `${out},${cout}<-${operation}(${cin},${arg0},${arg1}), formerly cf-${g.carry},r-${g.dest}=${g.meth}${g.src}`,
      },
    },
  ];
});

//*************
// h#0.5022 = (h#0.5013 - z.5021); /* u64 */)
// h#0.5022 = (h#0.5013 + z.5021); /* u64 */
//*************

addsub.set(/\s+(?<dest>[^ ]+) = \((?<src1>[^ ]+) (?<meth>\+|-) (?<src2>[^)]+)\);.*/, (g) => {
  Logger.log("trying to add/sub");
  const [arg0, arg1] = [g.src1, g.src2].map(Renamer.rename);

  const out = Renamer.rename(g.dest);

  const operation = g.meth == "-" ? "-" : "+";
  return [
    {
      operation,
      datatype: "u64",
      name: [out],
      arguments: [arg0, arg1],
      parameters: {
        comment: `${out}<-${arg0} ${operation} ${arg1}, formerly ${g.dest}=${g.src1}${g.meth}${g.src2}`,
      },
    },
  ];
});
export { addsub };
