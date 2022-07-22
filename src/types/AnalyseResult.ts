import type { MeasureResult } from "@/types";

export type numTripel = [cyclesA: number, cyclesB: number, cyclesC: number];

export type QuickStats = { median: number; stddev: number; n: number };

export interface AnalyseResult {
  // the raw median, without removing outliers
  rawMedian: numTripel;
  // variance in that distribution
  rawStddev: numTripel;
  // scaled by batch_size. so those are the medians per single execution
  batchSizeScaledrawMedian: numTripel;
  batchSizeScaledrawStddev: numTripel;
  // same as above, but the medians are based on the distribution with removed outliers.
  noOutlierMedian: numTripel;
  noOutlierStddev: numTripel;
  noOutlierBatchSizeScaledMedian: numTripel;
  noOutlierBatchSizeScaledStddev: numTripel;

  numOutliers: numTripel;

  chunks: [chunksA: number, chunksB: number];
  numBatches: [chunksA: number, chunksB: number];

  correct: boolean;
  rawResult: MeasureResult; // hopefully just for debug/dev purposes
}

export interface AnalyseMeasureResultOptions {
  checkCorrectness?: boolean;
}
