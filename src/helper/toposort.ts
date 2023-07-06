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

import { Paul } from "@/paul";
import type { CryptOpt, Nodes } from "@/types";

import { assertStringArguments, assertStringNames, makeU64NameLimbs } from "./lamdas";

export function toposort(
  _nodes: Readonly<Readonly<CryptOpt.StringOperation>[]>,
  neededBy: Map<string, Set<string>>,
): number[] {
  _nodes.forEach(assertStringNames);
  _nodes.forEach(assertStringArguments);
  const nodes = _nodes as CryptOpt.StringOperation[];
  const sorted = [] as number[];
  const unsorted = new Set(nodes.keys());

  let l = 0;

  while (l < nodes.length) {
    const canScheduleNow = [] as number[];
    unsorted.forEach((index) => {
      let isIndexDependentOnAnyOfTheRest = false;
      unsorted.forEach((rest) => {
        if (isADependentOnB(index, rest, nodes, neededBy)) {
          isIndexDependentOnAnyOfTheRest = true;
          return;
        }
      });
      if (!isIndexDependentOnAnyOfTheRest) {
        canScheduleNow.push(index);
      }
    });

    if (canScheduleNow.length === 0 && l < nodes.length) {
      const unsorted = nodes
        .filter((_, i) => !sorted.includes(i))
        .map((n) => n.name[0])
        .join(", ");
      throw new Error(`i cant schedule anything, but I want need to sort in ... ${unsorted} `);
    }

    // then pick a node from the available at random
    const choice = Paul.pick(canScheduleNow);

    // add it to sorted
    l = sorted.push(choice);

    // remove from unsorted
    unsorted.delete(choice);
  }

  return sorted;
}

export function isADependentOnB(
  a: number,
  b: number,
  nodes: Nodes,
  neededBy: Map<string, Set<string>>,
): boolean {
  if (isNaN(a) || isNaN(b)) {
    throw new Error("only support number numbers");
  }
  const A = nodes[a];
  const B = nodes[b];
  if (typeof A === "undefined" || typeof B === "undefined") {
    throw new Error("only supports indexes, which result in non-undefined nodes. ");
  }
  const setOfDeps = makeU64NameLimbs(B).reduce((acc: Set<string>, limb) => {
    const set = neededBy.get(limb);
    if (set) {
      set.forEach((s) => acc.add(s));
    }
    return acc;
  }, new Set<string>());
  // setOfDeps may be empty (if no one wants B... like outN[n])

  // in the setOfDeps we only have the limbs
  const needles = makeU64NameLimbs(A);
  // needles are the 64-bit versions like x1,x2 or x100_1
  return needles.some((n) => setOfDeps.has(n));
}
