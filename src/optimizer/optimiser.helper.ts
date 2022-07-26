import { CHOICE } from "@/enums";
import { bl, cy, gn, pu, rd, re, SI, yl } from "@/helper";
import { Model } from "@/model";
import type { AnalyseResult } from "@/types";

export function genStatusLine(a: {
  writeout: boolean;
  logComment: string;
  curve: string;
  method: string;
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
    `${a.writeout ? "\n" : "\r"}${a.curve}-${a.method}`,
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
