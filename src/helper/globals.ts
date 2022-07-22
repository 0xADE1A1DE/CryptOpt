import type { CryptoptGlobals } from "@types";
const globals: CryptoptGlobals = {
  currentRatio: Infinity,
  convergence: [] as string[], // numbers, but .toFixed(4)
  time: {
    // in seconds
    validate: 0,
    generateFiat: 0,
    generateCryptopt: 0,
  },
};
export default globals;
