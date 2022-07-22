import { CryptOpt } from "@types";

import { isImm, isReadOnlyMemory, limbify, limbifyImm, makeU64NameLimbs } from "@/helper";
export type Node = CryptOpt.StringInstruction;
export type Nodes = Node[];

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
 * @returns two maps neededby and needs. Each mapping from a name (x1_0) to a
 * set of names, which x1_0 is either needed by, or which x1_0 needs.
 *
 * E.g. u64 x11 = arg1[3] + arg1[2]
 *      u64 x12 = arg1[3] * x11
 *     u128 x13 = x11 * x12
 *
 * then neededBy.get(x11) === Set(x12, x13_0, x13_1)
 *      needs.get(x11) === Set(arg1[3], arg1[2])
 *
 * TODO:
 * It also employs more logic depending on the operation and the destination data type
 * E.g. u128 x1 = arg1[3] + arg1[2]
 *       u64 x2 = x1 >> 64
 *
 * results in neededBy.get("x1")   === undefined
 *            neededBy.get("x1_0") === undefined
 *            neededBy.get("x1_1") === Set(x2)
 *            needs.get(x2)        === Set(x1_1)
 *
 *
 * The needs    is used for creating the dependency tree and creating the topological order
 * The neededBy is used for determining if a current value can be overwritten
 *
 */
export function createDependencyRelation(
  nodes: Nodes,
  lookupMap: Map<string, number>,
): { neededBy: Map<string, Set<string>>; needs: Map<string, Set<string>> } {
  const needs = new Map<string, Set<string>>();
  const neededBy = new Map<string, Set<string>>();

  nodes.forEach((node) => {
    // E.g. u64  x3      = arg1[3] + arg1[2]
    // E.g. u64  x11,x12 = arg1[3] * arg1[2]
    // E.g. u128 x1      = arg1[3] * x11
    // E.g. u128 x2      = x1      + x12
    //

    // 'names' is for a u128 x1 its the limbs [x1_0, x1_1] and for u64 its just [x2] or [x11,x12]
    const names = makeU64NameLimbs(node);

    // n is x11 or x12 or arg1[2] or x1_1
    names.forEach((n, limbno) => {
      if (n == "_") {
        return;
      }
      const needsSet = needs.get(n) ?? new Set<string>();
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
          needsSet.add(arg); // n needs arg
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
          needsSet.add(arg);
          needed_limbs.forEach((nl) => {
            const neededBySet = neededBy.get(nl) ?? new Set<string>();
            neededBySet.add(n);
            neededBy.set(nl, neededBySet);
          });
        }
      });
      needs.set(n, needsSet);
    });
  });
  neededBy.delete("_");
  neededBy.delete("");
  return { needs, neededBy };
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
  args: CryptOpt.StringInstruction["arguments"],
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
