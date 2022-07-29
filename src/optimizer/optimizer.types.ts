export type OptimizerArgs = {
  evals: number;
  seed: number;
  curve: string;
  method: string;
  cyclegoal: number;
  readState?: string; // filename
  logComment: string;
  proof: boolean;
  verbose: boolean;
  bridge?: string;
};
