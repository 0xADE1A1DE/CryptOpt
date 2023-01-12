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

import { defaults } from "lodash-es";
import * as Stats from "simple-statistics";

import type {
  AnalyseMeasureResultOptions,
  AnalyseResult,
  MeasureResult,
  numTripel,
  QuickStats,
} from "@/types";
import { errorOut, ERRORS } from "@/errors";
import type { AsmFunctionSummary } from "measuresuite";

/**
 * @param result - the result to analyse
 *
 * @param options - configure
 * @param options.checkCorrectness // throws if not correct; if this options-switch is correct
 */
export function analyseMeasureResult(
  result: MeasureResult | null,
  options: AnalyseMeasureResultOptions,
): AnalyseResult {
  // assign default values
  defaults(options, { checkCorrectness: true });

  if (!result) {
    throw new Error("measure returned, but results is nullish. TSNH.");
  }

  if (options.checkCorrectness && result.stats.incorrect !== 0) {
    console.error(
      `Number ${result.stats.incorrect} did not calculate the same as the previous one. (Shared object is loaded as id '0') You probably want to diff them. Here:`,
      `diff (Resultdir = ${options.resultDir})/tested_incorrect_*.asm`,
    );
    throw Error("tested_incorrect");
  }

  if (result.cycles.length == 0 || result.cycles.some((c) => c.length == 0)) {
    console.error(JSON.stringify(result));
    errorOut(ERRORS.measureInsufficientData);
  }

  const [cc, ca, cb] = result.cycles.map(analyseRow);
  const rawMedian: numTripel = [ca.pre.median, cb.pre.median, cc.pre.median];

  if (rawMedian.some(isNaN)) {
    console.error("TSNH. Some mean is NaN." + JSON.stringify(result));
    process.exit(4);
  }

  const rawStddev: numTripel = [ca.pre.stddev, cb.pre.stddev, cc.pre.stddev];
  const noOutlierMedian: numTripel = [ca.post.median, cb.post.median, cc.post.median];

  const noOutlierStddev: numTripel = [ca.post.stddev, cb.post.stddev, cc.post.stddev];

  const scale = (cyc: number): number => cyc / options.batchSize;

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

    chunks: result.functions
      .filter(({ type }) => type == "ASM")
      .map((f) => (f as AsmFunctionSummary).chunks) as [number, number],
    correct: result.stats.incorrect !== 0,
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
