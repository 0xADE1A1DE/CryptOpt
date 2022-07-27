import { mkdtempSync } from "fs";
import { tmpdir as osTmpdir } from "os";
import { basename, join as pathJoin } from "path";

import type { CryptOpt } from "@/types";

export function getTestArgs(filename: string): {
  evals: 1;
  seed: 1;
  cyclegoal: 100;
  logComment: "";
  skipProof: true;
  curve: string;
  method: string;
  verbose: false;
  bridge?: string;
} {
  const groups = basename(filename).match(/(?<curve>.*)-(?<method>.*)\.ts/)?.groups;

  if (!groups) {
    throw new Error("filename not matching.");
  }
  const { curve, method } = groups;

  return {
    evals: 1,
    seed: 1,
    cyclegoal: 100,
    logComment: "",
    skipProof: true,
    curve,
    method,
    verbose: false,
  };
}
export function getTestResultsPath(): string {
  return mkdtempSync(pathJoin(osTmpdir(), "jest-"));
}
export function nothing(_msg: string) {
  /*intentionally empty*/
}

export function createModelHelpers(): {
  rex: RegExp;
  nodes: CryptOpt.StringInstruction[];
} {
  // special dev-'friendly'-way to specify nodes, sepcified in rex
  const rex = /^(?<datatype>u\d+) (?<names>[xout[\]_,0-9]+) = (?<operation>[\S]+) (?<args>[^/\n]+)/;
  const rawNodes = [
    "u64 x1 = = arg1[0]",
    "u64 x2 = = arg1[1]",
    "u64 x3 = + x1 x2",
    "u128 x100 = * x1 x2",
    "u128 x101 = * x1 x3",
    "u128 x102 = * x100 x101",
    "u64 x4 = & x102 0xffffffffffffffff // lo-limb",
    "u128 x103 = + x100 x4",
    "u64 x5 = >> x103 64                // hi-limb",
    "u64 x6,_ = + x1 x2  // addcarryx",
    "u64 x8,x9 = * x1 x2  // mulx",
    "u1 x27 = >> x8 43 // shr, happens in poly1305-sq",
    "u64 x28 = + x27 x4 ",
    "u64 x29 = + x6 x9 ",
    "u64 out1[0] = = x5 ",
    "u64 out1[1] = = x28 ",
    "u64 out1[2] = = x29 ",
    //TODO: maybe, when the limb-based dependency is implemented, we may need to add an example where one u128 is split up into two u46 limbs via >> 64 and & 0xffffffffffffffff
    // "u64 x10 = * x100 x101  // mulx", skipped for now, probably never going to happen... maybe with if 101 was zext'ed
  ];
  const nodes = rawNodes.map((spec) => {
    const g = spec.match(rex)?.groups;
    if (!g) {
      throw new Error(`node spec invalid for ${spec}`);
    }
    return {
      datatype: g.datatype,
      operation: g.operation,
      name: g.names.split(","),
      arguments: g.args.split(" ").filter((a) => a), // to get rid of all the non-args,
      decisions: {},
      decisionsHot: [] as string[],
    } as CryptOpt.StringInstruction;
  });
  if (rawNodes.length !== nodes.length) {
    throw new Error("integrety failed.");
  }
  return { nodes, rex };
}
