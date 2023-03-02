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

import { cpus } from "os";

import { CHOICE } from "@/enums";
import { bl, cy, env, gn, pu, rd, re, SI, yl } from "@/helper";
import globals from "@/helper/globals";
import { Model } from "@/model";
import type { AnalyseResult } from "@/types";

const { CC, CFLAGS } = env;

export function genStatusLine(a: {
  writeout: boolean;
  logComment: string;
  symbolname: string;
  stacklength: number;
  batchSize: number;
  no_of_instructions: number;
  analyseResult: AnalyseResult;
  indexGood: number;
  indexBad: number;
  goodChunks: number;
  badChunks: number;
  choice: CHOICE;
  kept: boolean;
  numEvals: number;
  evals: number;
  ratioString: string;
  show_per_second: string;
}): string {
  const cyclDeltaR = Math.abs(a.analyseResult.rawMedian[0] - a.analyseResult.rawMedian[1])
    .toString()
    .padStart(6);

  return [
    // general
    `${a.writeout ? "\n" : "\r"}${a.symbolname}`,
    `${a.logComment ?? "-"}`,
    `${bl}${a.stacklength.toString().padStart(3)}${re}`,
    `${cy}bs${a.batchSize.toString().padStart(5)}${re}`,
    `#inst:${cy}${a.no_of_instructions.toString().padStart(4)}${re}`,
    `cyclΔ ${gn}${cyclDeltaR}${re}`,

    // good
    `${yl}G ${a.analyseResult.batchSizeScaledrawMedian[a.indexGood].toFixed(0).padStart(3)} cycl` +
      // ` cnks${a.goodChunks.toString().padStart(3)}` +
      ` ${cy}σ${a.analyseResult.batchSizeScaledrawStddev[a.indexGood].toFixed(0).padStart(3)}${yl}`,
    // ` o${a.analyseResult.numOutliers[a.indexGood].toString().padStart(2)}/nb${ a.analyseResult.numBatches[a.indexGood] }${re}`,
    // `${analyseResult.rawResult.stats.virtualAddressA}${re}`,

    // bad
    `${rd}B ${a.analyseResult.batchSizeScaledrawMedian[a.indexBad].toFixed(0).padStart(3)} cycl` +
      // ` cnks${a.badChunks.toString().padStart(3)}` +
      ` ${cy}σ${a.analyseResult.batchSizeScaledrawStddev[a.indexBad].toFixed(0).padStart(3)}${rd}`,
    // ` o${a.analyseResult.numOutliers[a.indexBad].toString().padStart(2)}/nb${ a.analyseResult.numBatches[a.indexBad] }${re}`,
    // `${analyseResult.rawResult.stats.virtualAddressB}${re}`,

    // lib
    `${pu}L ${a.analyseResult.batchSizeScaledrawMedian[2].toFixed(0).padStart(3)}${re}`,
    `${a.ratioString[0] === "0" ? rd : gn}l/g ${bl}${a.ratioString.padStart(6)}${re}`,

    `${bl}${a.choice}${re}`,
    `${cy}${Model.permutationStats}${re}`,
    `${cy}${Model.decisionStats}${re}`,
    `${a.kept ? gn : rd}${SI(a.numEvals)}(${((100 * a.numEvals) / a.evals).toFixed(0).padStart(2)}%)` +
      `${pu}${a.show_per_second}${re}`,
  ].join("|");
}

export function genStatistics(a: {
  paddedSeed: string;
  ratioString: string;
  evals: number;
  elapsed: number;
  batchSize: number;
  numBatches: number;
  acc: number;
  numRevert: { [k: string]: number };
  numMut: { [k: string]: number };
}): string[] {
  return [
    `; cpu ${cpus()[0].model}`,
    `; ratio ${a.ratioString}`,
    `; seed ${a.paddedSeed} `,
    `; CC / CFLAGS ${CC} / ${CFLAGS} `,
    `; time needed: ${a.elapsed} ms on ${a.evals} evaluations.`,
    `; Time spent for assembling and measuring (initial batch_size=${a.batchSize}, initial num_batches=${a.numBatches}): ${a.acc} ms`,
    `; number of used evaluations: ${a.evals}`,
    `; Ratio (time for assembling + measure)/(total runtime for ${a.evals} evals): ${a.acc / a.elapsed}`,
    ...["permutation", "decision"].map((key) => {
      const r = ((a.numRevert[key] / a.numMut[key]) * 100).toFixed(3);
      return `; number reverted ${key} / tried ${key}: ${a.numRevert[key]} / ${a.numMut[key]} =${r}%`;
    }),
  ];
}
export function logMutation({
  choice,
  kept,
  numEvals,
}: {
  choice: CHOICE;
  numEvals: number;
  kept: boolean;
}): void {
  const pDetails = choice == " P" ? Model.permutationStats : "                      ";
  const dDetails = choice == "D " ? Model.decisionStats : "             ";

  globals.mutationLog.push([numEvals, choice.trim(), kept ? 1 : 0, pDetails, dDetails].join(","));
}
