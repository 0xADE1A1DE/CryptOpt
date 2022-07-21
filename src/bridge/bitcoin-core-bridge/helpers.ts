import type { CryptOpt } from "@/types";
import type { PT, StructName } from "./raw.type";
export type argMatch = {
  casts: Array<{ type: `i${number}` }>;
  pointers: Array<{ type: PT; id: `x${number}` }>;
  scalars: Array<{ type?: `i${number}`; id: `x${number}` }>;
  imm: Array<{ type: `i${number}`; imm: string }>;
};
export const pointerRegEx = /(?<type>((i\d+)|(%struct\.\w+))\*)\s+(?<id>x\d+)/;
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
            if (key == "pointers" && g?.type.startsWith("%struct")) {
              g.type = g.type.replaceAll("%struct", "struct");
            }
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

export function isStructPointer(a: PT): a is `${StructName}*` {
  return a.startsWith("struct.") && a.endsWith("*");
}
