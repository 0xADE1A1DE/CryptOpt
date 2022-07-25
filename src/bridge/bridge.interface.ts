import type { CryptOpt } from "@/types";

export interface Bridge {
  getCryptOptFunction(method: string): CryptOpt.Function;
  argwidth(curve: string, method: string): number;
  argnumin(method: string): number;
  argnumout(method: string): number;
  machinecode(method: string, filename: string): string;
}
