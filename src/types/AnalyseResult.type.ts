/**
 * Copyright 2023 University of Adelaide
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import type { MeasureResult } from "measuresuite";

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

  correct: boolean;
  rawResult: MeasureResult; // hopefully just for debug/dev purposes
}

export interface AnalyseMeasureResultOptions {
  batchSize: number;
  checkCorrectness?: boolean;
  resultDir?: string;
}
