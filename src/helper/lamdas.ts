//Lamdas means here just helper functions, which dont need any imports.
// so don't specify any imports there. Put those into ./helpers.ts
// this is done to remove circular dependencies while ensuring low amount of code duplication
export function SI(a: number): string {
  if (a === 0) return " zero";
  const exp = Math.floor(Math.log10(a) / 3);
  const suff = ["", "k", "M", "T"][exp];
  return `${(a / Math.pow(1000, exp)).toPrecision(3)}${suff}`.padStart(5);
}
