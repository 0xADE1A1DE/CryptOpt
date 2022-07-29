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

import { Paul } from "@/paul";
import type { CryptOpt } from "@/types";

import { assertStringArguments, assertStringNames, matchXD } from "./lamdas";

export function toposort(_nodes: Readonly<Readonly<CryptOpt.StringOperation>[]>): number[] {
  _nodes.forEach(assertStringNames);
  _nodes.forEach(assertStringArguments);
  const nodes = _nodes as CryptOpt.StringOperation[];
  const sorted = [] as number[];
  let l = 0;

  const availableXDD = new Set<string>();

  while (l < nodes.length) {
    const canScheduleNow = nodes.reduce((acc, node, idx) => {
      // if it is already in the sorted, then we cant do it again
      if (sorted.includes(idx)) {
        return acc;
      }
      const xdArgs = node.arguments.filter(matchXD);
      if (
        // if it has no xDD arguments
        xdArgs.length === 0 ||
        // or all of them are available
        xdArgs.every((arg) => availableXDD.has(arg))
      ) {
        // you can schedule a node
        acc.push(idx);
      }
      return acc;
    }, new Array<number>());

    if (canScheduleNow.length === 0 && l < nodes.length) {
      const unsorted = nodes
        .filter((_, i) => !sorted.includes(i))
        .map((n) => n.name[0])
        .join(", ");
      throw new Error(`i cant schedule anything, but I want need to sort in ... ${unsorted} `);
    }
    // then pic a node from the available at random
    const choice = Paul.pick(canScheduleNow);
    // add it to sorted
    l = sorted.push(choice);

    // and as the name is not available, add them
    nodes[choice].name.forEach((name) => availableXDD.add(name));
    // makeU64NameLimbs(nodes[choice]).forEach((name) => availableXDD.add(name));
  }

  return sorted;
}
