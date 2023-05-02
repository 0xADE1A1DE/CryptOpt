import { Renamer } from "./renamer.class";
import { CryptOpt, Fiat } from "@/types";
export const resolvePointerRead = (src: string, si: string): Fiat.ArgVarName => {
  const s = Renamer.rename(src) as `arg${number}`;
  if (!s.startsWith("arg")) {
    throw new Error(
      "cannot read from non-arg avariables as an array... probably... maybe this actually works, but we need to check.",
    );
  }
  // this notation has the offset in bytes
  const index = Number(si) / 8;
  return `${s}[${index}]`;
};
export const resolvePointerWrite = (src: string, si: string): Fiat.OutVarName => {
  const s = Renamer.rename(src) as `out${number}`;
  if (!s.startsWith("out")) {
    throw new Error(
      `cannot write to non-out variables '${s}' as an array... probably... maybe this actually works, but we need to check.`,
    );
  }
  // this notation has the offset in bytes
  const index = Number(si) / 8;
  return `${s}[${index}]`;
};
