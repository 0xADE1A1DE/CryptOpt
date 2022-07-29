/**
 * Copyright 2022 University of Adelaide
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

import { defaults, zip } from "lodash-es";
import * as Stats from "simple-statistics";

import type {
  AnalyseMeasureResultOptions,
  AnalyseResult,
  MeasureResult,
  numTripel,
  QuickStats,
} from "@/types";

/**
 * @param result - the result to analyse
 *
 * @param options - configure
 * @param options.checkCorrectness // throws if not correct; if this options-switch is correct
 */
export function analyseMeasureResult(
  result: MeasureResult | null,
  options: AnalyseMeasureResultOptions = {},
): AnalyseResult {
  // assign default values
  defaults(options, { checkCorrectness: true });

  if (!result) {
    throw new Error("measure returned, but results is nullish. TSNH.");
  }

  if (options.checkCorrectness === true && result.stats.checkResult === false) {
    console.error(
      `\nTested incorrect.
            countA: ${result.stats.countA}/${result.stats.numBatches},
            countB: ${result.stats.countB}/${result.stats.numBatches}.
            Have a look at status runorder:  ${result.stats.runOrder}, the last one was the cause of the incorrectness`,
    );
    throw new Error("tested_incorrect");
  }

  const [ca, cb, cc] = zip(...result.times).map(analyseRow);
  const rawMedian: numTripel = [ca.pre.median, cb.pre.median, cc.pre.median];

  if (rawMedian.some(isNaN)) {
    console.error("TSNH. Some mean is NaN." + JSON.stringify(result));
    process.exit(4);
  }

  const rawStddev: numTripel = [ca.pre.stddev, cb.pre.stddev, cc.pre.stddev];
  const noOutlierMedian: numTripel = [ca.post.median, cb.post.median, cc.post.median];

  const noOutlierStddev: numTripel = [ca.post.stddev, cb.post.stddev, cc.post.stddev];

  const scale = (cyc: number): number => cyc / result.stats.batchSize;

  return {
    rawMedian,
    rawStddev,
    batchSizeScaledrawMedian: rawMedian.map(scale) as numTripel,
    batchSizeScaledrawStddev: rawStddev.map(scale) as numTripel,

    noOutlierMedian,
    noOutlierStddev,
    noOutlierBatchSizeScaledMedian: noOutlierMedian.map(scale) as numTripel,
    noOutlierBatchSizeScaledStddev: noOutlierStddev.map(scale) as numTripel,

    numOutliers: [ca.pre.n - ca.post.n, ca.pre.n - ca.post.n, ca.pre.n - ca.post.n],
    numBatches: [result.stats.countA, result.stats.countB],

    chunks: [result.stats.chunksA, result.stats.chunksB],
    correct: result.stats.checkResult,
    rawResult: result,
  };
}

/**
 * keeps numbers bigger than @param thres=0
 */
function cleanRow(arr: Array<number | undefined>, thres = 0): number[] {
  return arr.filter((v) => typeof v === "number" && v > thres) as number[];
}

//helpers -getmedian
export function analyseRow(arr: Array<number | undefined>): { pre: QuickStats; post: QuickStats } {
  const cleaned = cleanRow(arr);
  // which data to consider;
  const [pre, post] = createStatistics(cleaned);

  return {
    pre: {
      median: Stats.median(pre),
      stddev: Stats.sampleStandardDeviation(pre),
      n: pre.length,
    },
    post: {
      median: Stats.median(post),
      stddev: Stats.sampleStandardDeviation(post),
      n: post.length,
    },
  };
}

function createStatistics(arr: number[]): [pre: number[], post: number[]] {
  const irq = Stats.interquartileRange(arr);
  const q1 = Stats.quantile(arr, 0.25);
  const q3 = Stats.quantile(arr, 0.75);
  const post = arr.filter((a) => a >= q1 - 1.5 * irq && a <= q3 + 1.5 * irq);
  return [arr, post];
}
