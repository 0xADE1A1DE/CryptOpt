/**
 * This script takes one or three argument:
 * one argument
 *      - a path to an asm-file, implementing a known/supported method or
 *      - a symbol name to measure with libObly
 * three arguments
 *      - path to  asm-file
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

import { tmpdir } from "os";
import { join, basename } from "path";
import * as Stats from "simple-statistics";
import fs from "fs";

import { sha1Hash } from "@/paul";
import { analyseRow, ttable, CONF_IDX } from "@/helper";
import { Measuresuite } from "measuresuite";
import { init } from "@/optimizer/optimizer.helper.class";
import { KNOWN_SYMBOLS } from "@/bridge";

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
    seed = Number(basename(param_one).match(/seed(?<seed>[0-9]+)_ratio(?<radio>[0-9])+\.asm/)?.groups?.seed);

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
  const ms = createMS(symbol, seed, cFilename, jsonFilename);
  // TESTING
  do {
    // do one sample
    const sample1 = doSample(ms, 2 * MAX_SAMLPESIZE, asmString);
    if (typeof sample1 == "number") {
      shout(sample1);
      process.exit(0);
    }
    const sample2 = [] as number[];

    // randomly split it
    for (let i = 0; i < MAX_SAMLPESIZE; i++) {
      const randomIndex = Math.floor(Math.random() * sample1.length);
      const [randomSample] = sample1.splice(randomIndex, 1);
      sample2.push(randomSample);
    }

    // get the stats
    const std1 = Stats.sampleStandardDeviation(sample1);
    const std2 = Stats.sampleStandardDeviation(sample2);
    console.error(`StdDev: ${std1}; ${std2}`);

    const tvalue = Stats.tTestTwoSample(sample1, sample2);
    if (tvalue == null) {
      console.error("t-value shall not be null.");
      process.exit(1);
    }

    // check the stats
    const critical_value = ttable[sample1.length][CONF_IDX.conf_005];
    if (tvalue < critical_value) {
      //  Distribution are not significantly different For conf. interval 99.5%
      //  which is what we want, so we can trust the measurement.

      // calculate the mean of both samples
      const mean = Stats.mean(sample1.concat(sample2));
      shout(mean);
      return;
    }
    fs.appendFileSync("/tmp/cycle_count-retry.log", `${Date()}${param_one},${tries}\n`);
  } while (tries--);
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

function createMS(symbol: string, seed: number, jsonFilename: string, cFilename: string): Measuresuite {
  const randomString = sha1Hash(Math.ceil(Date.now() * Math.random())).toString(36);
  const cacheDir = join(tmpdir(), "CryptOpt.CountCycle.cache", randomString);
  if (symbol in KNOWN_SYMBOLS) {
    return init(cacheDir, {
      ...KNOWN_SYMBOLS[symbol],
      seed,
    }).measuresuite;
  }

  if ([jsonFilename, cFilename].some((f) => !(f && fs.existsSync(f)))) {
    console.error(
      "json and or c file names are invalid. Make sure that the first three parameters point to asm-file, c-file and json-file resp.",
    );
    process.exit(-1);
  }

  // --> manual bridge
  return init(cacheDir, {
    bridge: "manual",
    jsonFile: jsonFilename,
    cFile: cFilename,
    seed,
  }).measuresuite;
  //
}

function silence() {
  const backup = console.log;
  console.log = () => {
    // *wink* https://www.youtube.com/watch?v=GBvfiCdk-jc
  };
  return backup;
}

function doSample(ms: Measuresuite, size: number, asmstring: string | null): number[] | number {
  const resultCycleMedians: number[] = [];

  for (let i = 0; i < size; i++) {
    let cycles: number[] = [];
    try {
      if (asmstring == null) {
        cycles = ms.measureLibOnly(BATCH_SIZE, NUMBER_OF_BATCHES) || [];
      } else {
        const result = ms.measure(asmstring, asmstring, BATCH_SIZE, NUMBER_OF_BATCHES);
        if (!result?.stats.checkResult) {
          console.error("No / Wrong result");
          process.exit(-1);
        }
        cycles = result.times.map((t) => t[0]); // a
      }
    } catch (e) {
      console.error("execution of measure failed.", e);
    }

    const { median } = analyseRow(cycles).post;
    resultCycleMedians.push(median);
  }

  if (Stats.sampleStandardDeviation(resultCycleMedians) == 0) {
    // if there is no variance at all, then we can just return this value
    return resultCycleMedians[0];
  }
  return resultCycleMedians;
}
