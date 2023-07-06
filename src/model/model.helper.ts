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

import {
  ARG_PREFIX,
  isImm,
  isReadOnlyMemory,
  limbify,
  limbifyImm,
  makeU64NameLimbs,
  OUT_PREFIX,
} from "@/helper";
import type { CryptOpt, MEMORY_CONSTRAINTS_OPTIONS_T, Nodes } from "@/types";

/**
 * @param nodes: Array of nodes
 * ex:
 * 0: u128 x1
 * 1: u64 x2
 * 2: u64 x3,x4
 * @returns map from any limb to the node calculating the name
 * x1 -> 0
 * x1_0 -> 0
 * x1_1 -> 0
 * x2 -> 1
 * x3 -> 2
 * x4 -> 2
 */
export function nodeLookupMap(nodes: Nodes): Map<string, number> {
  const map = nodes.reduce((acc, node, index) => {
    if (node.datatype === "u128") {
      // x1 -> n
      // x100 -> n
      node.name.forEach((n) => acc.set(n, index));
    }
    makeU64NameLimbs(node).forEach((limb) => {
      // all the others
      // x100_0 -> n
      acc.set(limb, index);
    });
    return acc;
  }, new Map<string, number>());
  map.delete("_");
  return map;
}

/**
 * @returns map neededby: Mapping from a name (x1_0) to a
 * set of names, which x1_0 is either needed by.
 *
 * E.g. u64 x11 = arg1[3] + arg1[2]
 *      u64 x12 = arg1[3] * x11
 *     u128 x13 = x11 * x12
 *
 * then neededBy.get(x11) === Set(x12, x13_0, x13_1)
 *
 * TODO:
 * It also employs more logic depending on the operation and the destination data type
 * E.g. u128 x1 = arg1[3] + arg1[2]
 *       u64 x2 = x1 >> 64
 *
 * results in neededBy.get("x1")   === undefined
 *            neededBy.get("x1_0") === undefined
 *            neededBy.get("x1_1") === Set(x2)
 *
 *
 * The neededBy is used for determining if a current value can be overwritten
 *
 * @param memoryConstraints: see description in `argParse`.
 */
export function createDependencyRelation(
  nodes: Nodes,
  lookupMap: Map<string, number>,
  memoryConstraints: MEMORY_CONSTRAINTS_OPTIONS_T = "none",
): Map<string, Set<string>> {
  const neededBy = new Map<string, Set<string>>();

  nodes.forEach((node) => {
    // E.g. u64  x3      = arg1[3] + arg1[2]
    // E.g. u64  x11,x12 = arg1[3] * arg1[2]
    // E.g. u128 x1      = arg1[3] * x11
    // E.g. u128 x2      = x1      + x12
    // E.g. u64  x4      = x3      + arg1[3]
    // E.g. out1[2]      = x11
    //
    // with memoryConstraints == out1-arg1
    // (all neededBy(out1[2]) == Set(x3,x11,x12))
    //
    // with memoryConstraints == all
    // (all neededBy(out1[2]) == Set(x3,x11,x12,x1_0,x1_1))

    // 'names' is for a u128 x1 its the limbs [x1_0, x1_1] and for u64 its just [x2] or [x11,x12]
    const names = makeU64NameLimbs(node);

    // n is x11 or x12 or arg1[2] or x1_1
    names.forEach((n, limbno) => {
      if (n == "_") {
        return;
      }
      // If we have memoryConstraints and the current limb is an out-node
      if (memoryConstraints !== "none" && n.startsWith(OUT_PREFIX)) {
        // we need to find the nodes, which read memory, that the current out-node overwrites

        // this filterLambda is used to find all the nodes which potentially need to be scheduled before the current out-node
        let filterLambda: (c: CryptOpt.StringOperation) => boolean;

        // if we only care about the same slot of out1 vs arg1
        if (memoryConstraints === "out1-arg1") {
          // the lamba needs to only filter those which have the same slot
          const correspondingArgElement = n.replaceAll(OUT_PREFIX, ARG_PREFIX) as `arg${number}[${number}]`;
          filterLambda = ({ arguments: args }) => args.includes(correspondingArgElement);
        } else {
          // otherwise we generalise to all the argN[*]
          filterLambda = ({ arguments: args }) => args.some((a) => a.startsWith(ARG_PREFIX));
        }

        // once we've filtered them, we want to add all the limbs to the set
        nodes
          .filter(filterLambda)
          .flatMap(makeU64NameLimbs)
          .forEach((l) => {
            const neededBySet = neededBy.get(l) ?? new Set<string>();
            neededBySet.add(n);
            neededBy.set(l, neededBySet);
          });
      }

      node.arguments.forEach((arg: string) => {
        // depending on the operation and data types, we need the arguments and/or different limbs

        if (
          // If it is a xD (== has a Parent node), find how the current arg to calc n is calculated itself (to find out how many limbs arg has)
          // Iff that parent node is a !u128, it is either producing [xN] or [xN, xN]
          nodes[lookupMap.get(arg) as number] /*parent node*/?.datatype !== "u128" ||
          isImm(arg) || // or if arg is an immediate value
          // or if it is an readonly-mem
          isReadOnlyMemory(arg)
        ) {
          // 2.1 which means, arg is xN/0xff/argN[n], which is needed in its entirety for calculating n
          const neededBySet = neededBy.get(arg) ?? new Set<string>();
          neededBySet.add(n); // arg is needed by n
          neededBy.set(arg, neededBySet);
        } else {
          // 2.2 'arg' is a u128. We want to add the correct limb
          // to the dependencies, depending on the current nodes' type and operation

          // node creates one or two u64 from u128 (arg)
          // n is from u64 [xN] or u64 [xN, xN] or a limbified u128: u128_0 or u128_1
          // n is xN_${limbo} or xN if we only have one limb

          const d = groupDepLimbs(node.operation, node.arguments);

          const needed_limbs = d[limbno];
          needed_limbs.forEach((nl) => {
            const neededBySet = neededBy.get(nl) ?? new Set<string>();
            neededBySet.add(n);
            neededBy.set(nl, neededBySet);
          });
        }
      });
    });
  });
  neededBy.delete("_");
  neededBy.delete("");
  return neededBy;
}

/**
 *
 * depending on the operation, it will return the limbs grouped by what is needed
 * we are considering u128
 *
 * op=*, args='x1', 'x2' ->
 * think: a multiplication operation yields two limbs. o1_0, o1_1
 * to create o1_0, one only needs x1_0, x2_0
 * to create o1_1, one only needs x1_0, x2_0, x1_1, x2_1
 * thus it returns d=[["x1_0", "x2_0"], ["x1_0", "x2_0", "x1_1", "x2_1"]]
 * -> to calc limb=0 you'll need ...d[0]
 * -> to calc limb=1 you'll need ...d[1]
 *
 *
 * op=>>, args='x1', '64' ->
 * think: a >> operation yields two limbs. o1_0, o1_1
 * to create o1_0, one only needs x1_1
 *
 * this function assumes all the args to be u128.
 * so you gotta check, if they actually exist.
 * e.g. u128 x3 = x1 * x2
 * then x1 and x2 are most likely u64'es, but this function would return
 * d=[["x1_0", "x2_0"], ["x1_0", "x2_0", "x1_1", "x2_1"]]
 *
 */

function groupDepLimbs(
  op: CryptOpt.Operation_T,
  args: CryptOpt.StringOperation["arguments"],
): [string[], string[]] {
  switch (op) {
    case "mulx":
    case "+":
    case "addcarryx":
    case "subborrowx":
    case "*": {
      const argLimbs = args.map(limbify);
      const loArg = argLimbs.map((l) => l[0]);
      const hiArg = argLimbs.map((l) => l[1]).filter((l) => typeof l !== "undefined") as CryptOpt.Varname[];

      const loLimbNeeded = loArg;
      const hiLimbNeeded = [...loArg, ...hiArg];
      return [loLimbNeeded, hiLimbNeeded];
    }

    case "shrd":
    case ">>": {
      const argLimbs = limbify(args[0]) as [CryptOpt.Varname, CryptOpt.Varname];
      if (Number(args[1]) == 64) {
        return [[argLimbs[1]], []];
      }
      return [argLimbs, [argLimbs[1]]];
    }
    // case "shld": if, eventually...
    case "<<": {
      const argLimbs = limbify(args[0]) as [CryptOpt.Varname, CryptOpt.Varname];
      if (Number(args[1]) == 64) {
        return [[], [argLimbs[0]]];
      }
      // shld
      return [[argLimbs[0]], argLimbs];
    }
    case "ror": {
      const argLimbs = limbify(args[0]) as [CryptOpt.Varname, CryptOpt.Varname];
      if (Number(args[1]) == 64) {
        return [[argLimbs[1]], [argLimbs[0]]];
      }
      return [argLimbs, argLimbs];
    }
    case "&": {
      const argLimbs = limbify(args[0]) as [CryptOpt.Varname, CryptOpt.Varname];
      if (limbifyImm(args[1]).length > 1) {
        // ANDing with  more than 64 bit
        // we will just assume, that there then also exist 2 limbs from limbify
        return [[argLimbs[0]], [argLimbs[1]]];
      } else {
        return [[argLimbs[0]], []];
      }
    }
    case "limb": {
      // implicit output is u64
      const argLimbs = limbify(args[0]) as [CryptOpt.Varname, CryptOpt.Varname];
      const limbNo = Number(args[1]);
      return [[argLimbs[limbNo]], []];
    }
    case "zext": {
      // implicit output is u128
      const argLimbs = limbify(args[0]);
      return [[argLimbs[0]], []];
    }
    case "|":
    case "~":
    case "=":
    case "^": {
      const argLimbs = args.map(limbify);

      const lo = argLimbs.map((l) => l[0]);
      const hi = argLimbs.map((l) => l[1]).filter((l) => typeof l !== "undefined") as CryptOpt.Varname[];

      return [lo, hi];
    }
    case "cmovznz": {
      const [c, z, nz] = args;
      const argLimbs = [z, nz].map(limbify);

      const lo = argLimbs.map((l) => l[0]);
      const hi = argLimbs.map((l) => l[1]).filter((l) => typeof l !== "undefined") as CryptOpt.Varname[];

      return [
        [c, ...lo],
        [c, ...hi],
      ];
    }
    default: {
      // TODO: decide which limbs are needed for which operation
      // console.warn("unknown op to calculate dependencies. returning all");
      const workaround = args.flatMap(limbify);
      return [[...workaround], [...workaround]];
    }
  }
}
