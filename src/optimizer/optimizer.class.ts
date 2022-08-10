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

import { execSync } from "child_process";
import { existsSync, mkdirSync, rmSync } from "fs";
import { Measuresuite } from "measuresuite";
import { cpus, tmpdir } from "os";
import path from "path";

import { assemble } from "@/assembler";
import { FiatBridge } from "@/bridge/fiat-bridge";
import { CHOICE, FUNCTIONS } from "@/enums";
import { errorOut, ERRORS } from "@/errors";
import {
  analyseMeasureResult,
  env,
  LOG_EVERY,
  padSeed,
  PRINT_EVERY,
  printStartInfo,
  shouldProof,
  toggleFUNCTIONS,
  writeString,
} from "@/helper";
import globals from "@/helper/globals";
import { Model } from "@/model";
import { Paul, sha1Hash } from "@/paul";
import { RegisterAllocator } from "@/registerAllocator";
import type { OptimizerArgs, AnalyseResult } from "@/types";

import { genStatusLine } from "./optimizer.helper";
import { init } from "./optimizer.helper.class";

const { CC, CFLAGS } = env;
let choice: CHOICE;

export class Optimizer {
  private measuresuite: Measuresuite;
  private libcheckfunctionDirectory: string;
  private symbolname: string;

  public constructor(private args: OptimizerArgs) {
    const randomString = sha1Hash(Math.ceil(Date.now() * Math.random())).toString(36);
    this.libcheckfunctionDirectory = `${tmpdir()}${path.sep}CryptOpt.cache${path.sep}${randomString}`;
    mkdirSync(this.libcheckfunctionDirectory, { recursive: true });
    Paul.seed = args.seed;
    const { measuresuite, symbolname } = init(this.libcheckfunctionDirectory, args);
    this.measuresuite = measuresuite;
    this.symbolname = symbolname;

    globals.convergence = [];
    // load a saved state if necessary
    if (args.readState) {
      Model.import(args.readState);
    }
  }

  private no_of_instructions = -1;
  private asmStrings: { [k in FUNCTIONS]: string } = {
    [FUNCTIONS.F_A]: "",
    [FUNCTIONS.F_B]: "",
  };
  private numMut: { [id: string]: number } = {
    permutation: 0,
    decision: 0,
  };
  private numRevert: { [id: string]: number } = {
    permutation: 0,
    decision: 0,
  };

  private revertFunction = (): void => {
    /**intentionally blank */
  };
  /** you usually don't want to mess with @param random.
   * mutate should not be called from outside with @param random=false*/
  private mutate(random = true): void {
    if (random) {
      choice = Paul.pick([CHOICE.PERMUTE, CHOICE.DECISION]);
    }
    console.log("Mutationalita");
    switch (choice) {
      case CHOICE.PERMUTE: {
        Model.mutatePermutation();
        this.revertFunction = () => {
          this.numRevert.permutation++;
          Model.revertLastMutation();
        };
        this.numMut.permutation++;
        break;
      }
      case CHOICE.DECISION: {
        const hasHappend = Model.mutateDecision();
        if (!hasHappend) {
          // this is the case, if there is no hot decisions.
          choice = CHOICE.PERMUTE;
          this.mutate(false);
          return;
        }
        this.revertFunction = () => {
          this.numRevert.decision++;
          Model.revertLastMutation();
        };

        this.numMut.decision++;
      }
    }
  }

  public optimise() {
    return new Promise<number>((resolve) => {
      console.log("starting optimisation");
      printStartInfo({
        symbolname: this.symbolname,
        ...this.args,
      });
      let batchSize = 200;
      const numBatches = 31;
      let lastGood = Infinity;
      let ratioString = "";
      let numEvals = 0;

      const optimistaionStartDate = Date.now();
      let accumulatedTimeSpentByMeasuring = 0;

      const writeCurrentAsm = (number_evaluation?: number): void => {
        console.log("writing current asm");
        const elapsed = Date.now() - optimistaionStartDate;
        const evaluation_number = number_evaluation ?? this.args.evals;
        const paddedSeed = padSeed(Paul.initialSeed);
        const statistics = [
          `; cpu ${cpus()[0].model}`,
          `; ratio ${ratioString}`,
          `; seed ${paddedSeed} `,
          `; CC / CFLAGS ${CC} / ${CFLAGS} `,
          `; time needed: ${elapsed} ms on ${evaluation_number} evaluations.`,
          `; Time spent for assembling and measuring (initial batch_size=${batchSize}, initial num_batches=${numBatches}): ${accumulatedTimeSpentByMeasuring} ms`,
          `; number of used evaluations: ${evaluation_number}`,
          `; Ratio (time for assembling + measure)/(total runtime for ${evaluation_number} evals): ${
            accumulatedTimeSpentByMeasuring / elapsed
          }`,
          ...["permutation", "decision"].map(
            (key) =>
              `; number reverted ${key} / tried ${key}: ${this.numRevert[key]} / ${this.numMut[key]} =${(
                (this.numRevert[key] / this.numMut[key]) *
                100
              ).toFixed(3)}%`,
          ),
        ];

        console.log(statistics);
        const { curve, method } = this.args;

        const evalString = number_evaluation ? `_eval${number_evaluation}of${this.args.evals}` : "";

        const fileNameOptimised = [
          `${lastGood.toFixed(0)}${evalString}`,
          `_ratio${ratioString.replace(".", "")}`,
          `_seed${paddedSeed}_${this.symbolname}`,
        ].join("");
        const fullpath = path.join(this.args.resultDir, `${fileNameOptimised}.asm`);
        // write best found solution with headers
        // flip, because we want the last accepted, not the last mutated.
        const flipped = toggleFUNCTIONS(currentNameOfTheFunctionThatHasTheMutation);

        writeString(
          ["SECTION .text", `\tGLOBAL ${this.symbolname}`, `${this.symbolname}:`]
            .concat(this.asmStrings[flipped])
            .concat(statistics)
            .join("\n"),
          fullpath,
        );

        if (shouldProof(this.args)) {
          // and proof correct
          const proofCommandLine = FiatBridge.buildProofCommand(curve, method, fullpath);
          console.log(`proofing that asm correct with '${proofCommandLine}'`);
          try {
            const now = Date.now();
            execSync(proofCommandLine);
            globals.time.validate += (Date.now() - now) / 1000;
          } catch (e) {
            console.debug(`${proofCommandLine}`);
            errorOut(ERRORS.proofUnsuccessful);
          }
        }
        console.log("done with that current price of assembly code.");
      };
      let currentNameOfTheFunctionThatHasTheMutation = FUNCTIONS.F_A;
      let time = Date.now();
      let show_per_second = "many/s";
      let per_second_counter = 0;
      const intervalHandle = setInterval(() => {
        if (numEvals > 0) {
          // not first eval, thus we want to mutate.
          this.mutate();
        }

        console.log("assembling");
        const { code, stacklength } = assemble(this.args.resultDir);

        console.log("now we have the current string in the object, filtering");
        const filteredInstructions = code.filter((line) => line && !line.startsWith(";") && line !== "\n");
        this.no_of_instructions = filteredInstructions.length;

        // and depening on the silent-opt use filtered or the verbose ones for the string
        this.asmStrings[currentNameOfTheFunctionThatHasTheMutation] = (
          !this.args.verbose ? filteredInstructions : code
        ).join("\n");
        // check if this was the first round

        if (numEvals == 0) {
          // then point to fB and continue, write first
          if (this.asmStrings[FUNCTIONS.F_A].includes("undefined")) {
            const e = "\n\n\nNah... we dont want undefined \n\n\n";
            console.error(e);
            throw new Error(e);
          }
          currentNameOfTheFunctionThatHasTheMutation = FUNCTIONS.F_B;
          numEvals++;
        } else {
          //else, it was not the first round, we need to measure

          const now_measure = Date.now();

          let analyseResult: AnalyseResult | undefined;
          try {
            console.log("let the measurements begin!");
            // here we need the barriers
            const results = this.measuresuite.measure(
              this.asmStrings[FUNCTIONS.F_A],
              this.asmStrings[FUNCTIONS.F_B],
              batchSize,
              numBatches,
            );
            console.log("well done guys. The results are in!");

            if (!results) {
              throw new Error("MeasureSuite did not yield results.");
            }
            if (!results.stats.checkResult) {
              const ro = results.stats.runOrder;
              console.error(
                `${ro.charAt(ro.length - 1)} was incorrect: ${ro}. You probably want to diff them. Here:`,
                `diff ${this.args.resultDir}/tested_incorrect_*.asm`,
              );
              throw Error("tested_incorrect");
            }

            if (results.times.length == 0) {
              console.error(JSON.stringify(results));
              errorOut(ERRORS.measureInsufficientData);
            }

            try {
              analyseResult = analyseMeasureResult(results);
            } catch (e) {
              console.error(JSON.stringify(results));
              errorOut(ERRORS.measureCannotAnalyze);
            }

            //TODO increase numBatches, if the times have a big stddeviation
            //TODO change batchSize if the avg number is batchSize *= avg(times)/goal ; goal=10000 cycles
          } catch (e) {
            const isIncorrect = e instanceof Error && e.message.includes("tested_incorrect");
            const isInvalid = e instanceof Error && e.message.includes("could not be assembled");
            if (isInvalid || isIncorrect) {
              writeString(
                this.asmStrings[FUNCTIONS.F_A],
                path.join(this.args.resultDir, "tested_incorrect_A.asm"),
              );
              writeString(
                this.asmStrings[FUNCTIONS.F_B],
                path.join(this.args.resultDir, "tested_incorrect_B.asm"),
              );
              writeString(
                JSON.stringify({
                  nodes: Model.nodesInTopologicalOrder,
                  allocs: (RegisterAllocator.getInstance() as any)._allocations,
                }),
                path.join(this.args.resultDir, "tested_incorrect.json"),
              );
            }

            if (isIncorrect) {
              errorOut(ERRORS.measureIncorrect);
            }
            if (isInvalid) {
              errorOut(ERRORS.measureInvalid);
            }
            errorOut(ERRORS.measureGeneric);
          }

          accumulatedTimeSpentByMeasuring += Date.now() - now_measure;

          const [meanrawA, meanrawB, meanrawCheck] = analyseResult.rawMedian;

          batchSize = Math.ceil((Number(this.args.cyclegoal) / meanrawCheck) * batchSize);
          // We want to limit for some corner cases.
          batchSize = Math.min(batchSize, 10000);
          batchSize = Math.max(batchSize, 5);

          const currentFunctionIsA = () => currentNameOfTheFunctionThatHasTheMutation === FUNCTIONS.F_A;

          console.log(currentFunctionIsA() ? "New".padEnd(10) : "New".padStart(10));

          let kept: boolean;

          if (
            // A is better and A is new
            (meanrawA <= meanrawB && currentFunctionIsA()) ||
            // or B is better and B is new
            (meanrawA >= meanrawB && !currentFunctionIsA())
          ) {
            console.log("kept    mutation");
            kept = true;
            currentNameOfTheFunctionThatHasTheMutation = toggleFUNCTIONS(
              currentNameOfTheFunctionThatHasTheMutation,
            );
          } else {
            // revert
            kept = false;
            this.revertFunction();
          }
          const indexGood = Number(meanrawA > meanrawB);
          const indexBad = 1 - indexGood;
          globals.currentRatio = meanrawCheck / Math.min(meanrawB, meanrawA);

          const goodChunks = analyseResult.chunks[indexGood];
          const badChunks = analyseResult.chunks[indexBad];

          lastGood = analyseResult.rawMedian[indexGood];

          ratioString = globals.currentRatio /*aka: new ratio*/
            .toFixed(4);

          per_second_counter++;
          if (Date.now() - time > 1000) {
            time = Date.now();
            show_per_second = (per_second_counter + "/s").padStart(6);
            per_second_counter = 0;
          }
          if (numEvals % PRINT_EVERY == 0) {
            // print every 10th eval
            // a line every 5% (also to logfile) also write the asm when
            const writeout = numEvals % (this.args.evals / LOG_EVERY) === 0;
            const statusline = genStatusLine({
              writeout,
              ...this.args,
              symbolname: this.symbolname,
              stacklength,
              batchSize,
              no_of_instructions: this.no_of_instructions,
              analyseResult,
              indexGood,
              indexBad,
              goodChunks,
              badChunks,
              choice,
              kept,
              numEvals,
              ratioString,
              show_per_second,
            });
            process.stdout.write(statusline);

            globals.convergence.push(ratioString);
          }
          numEvals++;
          if (numEvals >= this.args.evals) {
            globals.time.generateCryptopt =
              (Date.now() - optimistaionStartDate) / 1000 - globals.time.validate;
            // DONE WITH OPTIMISING WRITE EVERYTHING TO DISK AND EXIT.
            clearInterval(intervalHandle);
            writeCurrentAsm();
            this.cleanLibcheckfunctions();
            console.log("Wonderful. Done with my work. Time for lunch.");
            resolve(0);
          }
        }
      }, 0);
    });
  }

  private cleanLibcheckfunctions() {
    if (existsSync(this.libcheckfunctionDirectory)) {
      try {
        console.log(`Removing lib check functions in '${this.libcheckfunctionDirectory}'`);
        rmSync(this.libcheckfunctionDirectory, { recursive: true });
        console.log(`removed ${this.libcheckfunctionDirectory}`);
      } catch (e) {
        console.error(e);
        throw e;
      }
    }
  }
}
