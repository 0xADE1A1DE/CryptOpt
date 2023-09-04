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

import type { CryptOpt } from "@/types";

import type { PT } from "./raw.type";

export type argMatch = {
  casts: Array<{ type: `i${number}` }>;
  pointers: Array<{ type: PT; id: `x${number}` }>;
  scalars: Array<{ type?: `i${number}`; id: `x${number}` }>;
  imm: Array<{ type: `i${number}`; imm: string }>;
};
export const pointerRegEx = /(?<type>((i\d+)\*)|(ptr))\s+(?<id>x\d+)/;
export function getArguments(s: string): argMatch {
  const regexMap = {
    casts: /to\s(?<type>i\d+)/,
    pointers: pointerRegEx,
    scalars: /^((?<type>i\d+)\s)?(?<id>x\d+)/,
    imm: /^((?<type>i\d+)\s)?(?<imm>-?\d+)/,
  };
  return s
    .split(",")
    .filter((a) => a.length > 0)
    .map((a) => a.trim())
    .reduce(
      (acc, s) => {
        Object.entries(regexMap).forEach(([key, regex]) => {
          const g = regex.exec(s)?.groups;
          if (g) {
            if (key == "pointers") {
              if (g?.type.startsWith("%struct")) {
                g.type = g.type.replaceAll("%struct", "struct");
              }
              if (g?.type == "ptr") {
                // lets do this for consistency for now.
                g.type = "i64*";
              }
            }

            /* eslint-disable @typescript-eslint/no-explicit-any */
            acc[key as keyof argMatch].push(Object.assign({}, g as any)); // skip type checking here.
          }
        });
        return acc;
      },
      {
        casts: [],
        pointers: [],
        scalars: [],
        imm: [],
      } as argMatch,
    );
}
export function getScalarsAndImmMappedAsConstArg(s: string): CryptOpt.ConstArgument[] {
  const { scalars, imm } = getArguments(s);
  const scalarsAsConstArg = scalars.map(({ id }) => id as CryptOpt.ConstArgument);
  const immsAsConstArg = imm.map(({ imm }) => {
    const bi = BigInt(imm);
    const isNeg = bi < 0n;
    return `${isNeg ? "-" : ""}0x${(isNeg ? bi * -1n : bi).toString(16)}` as CryptOpt.ConstArgument;
  });
  return scalarsAsConstArg.concat(immsAsConstArg);
}
