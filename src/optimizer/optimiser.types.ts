export type OptimiserArgs = {
  evals: number;
  seed: number;
  curve: string;
  method: string;
  cyclegoal: number;
  readState?: string; // filename
  logComment: string;
  skipProof: boolean;
  verbose: boolean;
  bridge?: string;
};