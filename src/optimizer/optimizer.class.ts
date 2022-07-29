import { execSync } from "child_process";
import { existsSync, mkdtempSync, rmSync } from "fs";
import { Measuresuite } from "measuresuite";
import { cpus, tmpdir } from "os";
import path from "path";

import { assemble } from "@/assembler";
import { FiatBridge } from "@/bridge/fiat-bridge";
import { CHOICE, FUNCTIONS } from "@/enums";
import { ERRORS, errorOut } from "@/errors";
import {
  analyseMeasureResult,
  env,
  generateResultsPath,
  LOG_EVERY,
  PRINT_EVERY,
  printStartInfo,
  shouldProof,
  toggleFUNCTIONS,
  writeasm,
} from "@/helper";
import globals from "@/helper/globals";
import { Model } from "@/model";
import { Paul } from "@/paul";
import type { AnalyseResult } from "@/types";

import { genStatusLine } from "./optimizer.helper";
import { init } from "./optimizer.helper.class";
import type { OptimizerArgs } from "./optimizer.types";

const { CC, CFLAGS } = env;
let choice: CHOICE;

export class Optimizer {
  private measuresuite: Measuresuite;
  private resultspath: string;
  private libcheckfunctionDirectory: string;

  public constructor(private args: OptimizerArgs) {
    this.libcheckfunctionDirectory = mkdtempSync(`${tmpdir()}${path.sep}`);
    this.resultspath = generateResultsPath();
    Paul.seed = args.seed;
    this.measuresuite = init(this.libcheckfunctionDirectory, args);
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
  /** you usually dont want to mess with @param random.
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

  public optimise = () =>
    new Promise<number>((resolve) => {
      console.log("starting optimisation");
      printStartInfo({
        resultsPath: this.resultspath,
        ...this.args,
      });
      let batchSize = 200;
      const numBatches = 31;
      let lastGood = Infinity;
      let ratioString = "";
      let numEvals = 0;

      const optimistaionStartDate = Date.now();
      let accumulatedTimeSpentByMeasuring = 0;

      const write_current_asm = (number_evaluation?: number): void => {
        console.log("writing current asm");
        const elapsed = Date.now() - optimistaionStartDate;
        const evaluation_number = number_evaluation ?? this.args.evals;
        const statistics = [
          `; cpu ${cpus()[0].model}`,
          `; ratio ${ratioString}`,
          `; seed ${Paul.initialSeed} `,
          `; CC / CFLAGS ${CC} / ${CFLAGS} `,
          `; time needed: ${elapsed} ms / ${evaluation_number} evals=> ${
            elapsed / Number(evaluation_number)
          }ms/eval`,
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
        const { curve, method: func } = this.args;

        const evalString = number_evaluation ? `_eval${number_evaluation}of${this.args.evals}` : "";

        const methodName = `${func}_${curve}`;
        const fileNameOptimised = [
          `${lastGood.toFixed(0)}${evalString}`,
          `_ratio${ratioString.replace(".", "")}`,
          `_seed${Paul.initialSeed}_${methodName}`,
        ].join("");
        const fullpath = path.join(this.resultspath, `${fileNameOptimised}.asm`);
        // write best found solution with headers
        // flip, because we want the last accepted, not the last mutated.
        const flipped = toggleFUNCTIONS(currentNameOfTheFunctionThatHasTheMutation);
        writeasm(
          ["SECTION .text", `\tGLOBAL ${methodName}`, `${methodName}:`]
            .concat(this.asmStrings[flipped])
            .concat(statistics)
            .join("\n"),
          fullpath,
        );

        if (shouldProof(this.args)) {
          // and proof correct
          const proofCommandLine = FiatBridge.buildProofCommand(curve, func, fullpath);
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
        const { code, stacklength } = assemble(this.resultspath);

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
            console.log("well done guys. the results are in!");

            if (!results) {
              throw new Error("Measuresuite did not yield results.");
            }
            if (!results.stats.checkResult) {
              const ro = results.stats.runOrder;
              console.error(
                `${ro.charAt(ro.length - 1)} was incorreect: ${ro}. You probably want to diff them. here:`,
                `diff ${this.resultspath}/tested_incorrect_*.asm`,
              );
              throw Error("tested_incorrect");
            }

            try {
              if (results.times.length > 1) {
                analyseResult = analyseMeasureResult(results);
              } else {
                console.error(JSON.stringify(results));
                console.error("measuresuite did not yield enough datapoints. TSNH.");
                process.exit(15);
              }
            } catch (e) {
              console.error(JSON.stringify(results));
              console.error(e, "Could not analyse measuresuites' results. TSNH.");
              process.exit(14);
            }

            //TODO increase num_batches, if the times have a big stddeviation
            //TODO change batch_size if the avg number is batch_size *= avg(times)/goal ; goal=10000cycles
          } catch (e) {
            const isIncorrect = e instanceof Error && e.message.includes("tested_incorrect");
            const isInvalid = e instanceof Error && e.message.includes("could not be assembled");
            if (isInvalid || isIncorrect) {
              writeasm(this.asmStrings[FUNCTIONS.F_A], path.join(this.resultspath, "tested_incorrect_A.asm"));
              writeasm(this.asmStrings[FUNCTIONS.F_B], path.join(this.resultspath, "tested_incorrect_B.asm"));
              writeasm(
                JSON.stringify(Model.nodesInTopologicalOrder),
                path.join(this.resultspath, "tested_incorrect.json"),
              );
            }

            if (isIncorrect) {
              console.error(e, ERRORS.measureIncorrect.msg);
              process.exit(ERRORS.measureIncorrect.exitCode);
            }
            if (isInvalid) {
              console.error(e, ERRORS.measureInvalid.msg);
              process.exit(ERRORS.measureInvalid.exitCode);
            }

            console.error(e, ERRORS.measureGeneric.msg);
            process.exit(ERRORS.measureGeneric.exitCode);
          }

          accumulatedTimeSpentByMeasuring += Date.now() - now_measure;

          const [meanrawA, meanrawB, meanrawCheck] = analyseResult.rawMedian;

          batchSize = Math.ceil((Number(this.args.cyclegoal) / meanrawCheck) * batchSize);
          // We want to limit for some corner cases.
          batchSize = Math.max(batchSize, 10000);
          batchSize = Math.min(batchSize, 5);

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
            write_current_asm();
            this.cleanLibcheckfunctions();
            console.log("Wonderful. Done with my work. Time for lunch.");
            resolve(0);
          }
        }
      }, 0);
    });

  private cleanLibcheckfunctions() {
    if (existsSync(this.libcheckfunctionDirectory)) {
      try {
        console.log(`removing libcheckfunctions in '${this.libcheckfunctionDirectory}'`);
        rmSync(this.libcheckfunctionDirectory, { recursive: true });
        console.log(`removed ${this.libcheckfunctionDirectory}`);
      } catch (e) {
        console.error(e);
        throw e;
      }
    }
  }
}
