import type { CryptOpt } from "@/types";

export interface Bridge {
  getCryptOptFunction(method: string, curve?: string): CryptOpt.Function;
  argwidth(curve: string, method: string): number;
  argnumin(method: string): number;
  argnumout(method: string): number;
  machinecode(sharedObject: string, method?: string, curve?: string): string;
}
