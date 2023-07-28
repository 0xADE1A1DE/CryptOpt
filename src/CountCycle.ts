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

/**
 * This script takes one or three argument:
 * one argument
 *      - a path to an asm-file, implementing a known/supported method or
 *      - a symbol name to measure with libObly
 * three arguments
 *      -            symbol
 *      - path to    c-file
 *      - path to json-file
 *      both implementing the same method.
 * It outputs a robust cycle-measurement for how long this asm takes to run.
 *
 * It generates two samples or each MAX_SAMLPESIZE length, and returns the mean of the medians of each sample, if the samples are statistically not significantly different.
 *
 * It repeats creating two samples as long as they are statistically different.
 *
 * The critical value is defined by taking the t-table index conf_005;
 *
 **/

import fs from "fs";
import { Measuresuite } from "measuresuite";
import { tmpdir } from "os";
import { basename, join } from "path";
import * as Stats from "simple-statistics";

import { KNOWN_SYMBOLS } from "@/bridge";
import { analyseRow, CONF_IDX, ttable } from "@/helper";
import { init } from "@/optimizer/optimizer.helper.class";
import { sha1Hash } from "@/paul";

// this number specifies how many data points are in each sample.
const MAX_SAMLPESIZE = 10;
const NUMBER_OF_BATCHES = 31; // nob in the paper
const BATCH_SIZE = 400; // bs in the paper

let tries = 100; // we should never need that many, but to avoid an infinite loop

main();
//
// Functions
// below
//
function main() {
  const shout = silence();
  const [, , param_one, cFilename, jsonFilename] = process.argv;

  if (!param_one) {
    console.error("Must provide at least one asmFilename or symbolName as first parameter");
    process.exit(-1);
  }

  let seed = Date.now();
  let asmString: string | null = null;
  let symbol: string | undefined;
  if (fs.existsSync(param_one)) {
    seed = Number(basename(param_one).match(/seed(?<seed>[0-9]+)_ratio(?<ratio>[0-9])+\.asm/)?.groups?.seed);

    if (isNaN(seed)) {
      console.error("The filename is not in the right format. Must match /seed[0-9]+_ratio[0-9]+.asm/ .");
      process.exit(-1);
    }

    asmString = fs.readFileSync(param_one).toString();
    symbol = getSymbol(asmString);
  } else {
    // otherwise param_one must have been a symbol
    symbol = param_one;
  }
  const cacheDir = createCache();
  const ms = createMS(cacheDir, symbol, seed, cFilename, jsonFilename);
  // TESTING
  do {
    let result = "";
    if (asmString == null) {
      // do it twice the size
      const data = doSampleLibonly(ms, 2 * MAX_SAMLPESIZE);
      const checkMean = roboustMean(data);
      if (checkMean !== -1) {
        result = checkMean.toString();
      }
    } else {
      const { asm, check } = doSampleAsm(ms, MAX_SAMLPESIZE, asmString, param_one);
      const checkMean = roboustMean(check);
      const asmMean = roboustMean(asm);
      if (checkMean !== -1 && asmMean !== -1) {
        result = `${asmMean} ${checkMean}`;
      }
    }

    if (result) {
      shout(result);
      fs.rmSync(cacheDir, { recursive: true, force: true });
      return;
    }

    fs.appendFileSync("/tmp/cycle_count-retry.log", `${Date()}${param_one},${tries}\n`);
  } while (tries--);
}

function roboustMean(data: number[]): number {
  const data2 = [] as number[];

  for (let i = 0; i < data.length / 2; i++) {
    const randomIndex = Math.floor(Math.random() * data.length);
    const [randomSample] = data.splice(randomIndex, 1);
    data2.push(randomSample);
  }

  const tvalue = Stats.tTestTwoSample(data, data2);
  if (tvalue == null) {
    throw new Error("t-value shall not be null.");
  }

  // check the stats
  const critical_value = ttable[data2.length][CONF_IDX.conf_005];
  if (tvalue < critical_value) {
    //  Distribution are not significantly different For conf. interval 99.5%
    //  which is what we want, so we can trust the measurement.

    // calculate the mean of both samples and return
    return Stats.mean(data.concat(data2));
  }
  return -1;
}

function getSymbol(asmstring: string): string | never {
  const symbol = asmstring
    .split("\n")
    .find((e) => e.includes("GLOBAL"))
    ?.match(/\s*GLOBAL (?<symbol>.*)/)?.groups?.symbol;
  if (!symbol) {
    console.error("Cannot find any symbol in asmstring. Must match /\\s*GLOBAL (?<symbol>.*)/");
    process.exit(-1);
  }
  return symbol;
}

function createMS(
  cacheDir: string,
  symbol: string,
  seed: number,
  jsonFilename: string,
  cFilename: string,
): Measuresuite {
  if (symbol in KNOWN_SYMBOLS) {
    return init(cacheDir, {
      ...KNOWN_SYMBOLS[symbol],
      seed,
      memoryConstraints: "none",
    }).measuresuite;
  }

  if ([jsonFilename, cFilename].some((f) => !(f && fs.existsSync(f)))) {
    console.error(
      `${symbol} is not known. Relying on json and C files. But: json and or c file names do not exist as file. Make sure that the first three parameters point to asm-file, c-file and json-file resp.`,
    );
    process.exit(-1);
  }

  // --> manual bridge
  return init(cacheDir, {
    bridge: "manual",
    jsonFile: jsonFilename,
    cFile: cFilename,
    seed,
    memoryConstraints: "none",
  }).measuresuite;
}

function silence() {
  const backup = console.log;
  console.log = () => {
    // *wink* https://www.youtube.com/watch?v=GBvfiCdk-jc
  };
  return backup;
}

function createCache(): string {
  const randomString = sha1Hash(Math.ceil(Date.now() * Math.random())).toString(36);
  return join(tmpdir(), "CryptOpt.CountCycle.cache", randomString);
}

function doSampleAsm(
  ms: Measuresuite,
  size: number,
  asmstring: string,
  asmfilename: string,
): { asm: number[]; check: number[] } {
  const resultCycleMedians = { asm: [] as number[], check: [] as number[] };

  for (let i = 0; i < size; i++) {
    let result;
    try {
      result = ms.measure(BATCH_SIZE, NUMBER_OF_BATCHES, [asmstring]);
      if (result?.stats.incorrect !== 0) {
        console.error("No / Wrong result");
        process.exit(-1);
      }
      // there is a bit of wierd thing going on.
      // on the 12th gen, sometimes only 0's are returned, or only for some it worked.
      if (result.cycles.some((rs) => rs.every((d) => d === 0))) {
        // then we'll try again.
        console.warn("try again ", result);
        i--;
        continue;
      }

      const medianA = analyseRow(result.cycles[1]).post.median;
      resultCycleMedians.asm.push(medianA);

      const medianC = analyseRow(result.cycles[0]).post.median;
      resultCycleMedians.check.push(medianC);
    } catch (e) {
      console.error(`execution of measure (${asmfilename}) failed.`, result, e);
    }
  }

  return resultCycleMedians;
}

function doSampleLibonly(ms: Measuresuite, size: number): number[] {
  const resultCycleMedians: number[] = [];
  for (let i = 0; i < size; i++) {
    try {
      const cycles = ms.measure(BATCH_SIZE, NUMBER_OF_BATCHES)?.cycles?.[0] ?? [];
      const { median } = analyseRow(cycles).post;
      resultCycleMedians.push(median);
    } catch (e) {
      console.error("execution of measure failed.", e);
    }
  }
  return resultCycleMedians;
}
