export interface CryptoptGlobals {
  currentRatio: number;
  convergence: string[]; // numbers, but .toFixed(4)
  time: {
    // in seconds
    validate: number;
    generateFiat: number;
    generateCryptopt: number;
  };
}
