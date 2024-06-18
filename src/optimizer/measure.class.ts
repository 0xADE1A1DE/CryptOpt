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

import { writeString } from "@/helper";
import { OptimizerArgs, UICA_OPTIONS_T, asm } from "@/types";
import { MeasureResult, Measuresuite } from "measuresuite";

import { sha1Hash } from "@/paul";
import { join } from "path";
import { tmpdir } from "os";
import { spawnSync } from "child_process";
import Logger from "@/helper/Logger.class";
import { rmdir, rmdirSync } from "fs";
import { nothing } from "test/test-helpers";

export type CryptOptMeasureResult = Omit<MeasureResult, "stats"> & {
  stats: Omit<MeasureResult["stats"], "timer"> & {
    timer: MeasureResult["stats"]["timer"] | "STACK" | "LENGTH" | UICA_OPTIONS_T;
  };
};
export default class MeasureUtil {
  public timer: CryptOptMeasureResult["stats"]["timer"];
  constructor(
    private measuresuite: Measuresuite,
    args: OptimizerArgs,
  ) {
    switch (args.objectiveFunction) {
      case "cycles":
        this.timer = measuresuite.timer;
        this.measure = measuresuite.measure;
        break;
      case "stack":
        this.timer = "STACK";
        this.measure = this.stackMeasure;
        break;
      case "length":
        this.timer = "LENGTH";
        this.measure = this.lenMeasure;
        break;
      case "uiCA":
        this.timer = args.uicaarch;
        this.measure = this.uiCAMeasure;
        break;
    }
  }
  public destroy() {
    if (this.measuresuite) {
      return this.measuresuite.destroy();
    }
    return 0;
  }
  public measure: (
    batchSize: number,
    numBatches: number,
    functions?: string[],
  ) => CryptOptMeasureResult | null;

  public measureMeasuresuite(
    batchSize: number,
    numBatches: number,
    functions?: string[],
  ): CryptOptMeasureResult | null {
    return this.measuresuite.measure(batchSize, numBatches, functions);
  }

  public stackMeasure(
    _batchSize: number,
    _numBatches: number,
    functions?: string[],
  ): CryptOptMeasureResult | null {
    if (!functions) {
      return null;
    }

    return {
      stats: {
        numFunctions: functions.length,
        runtime: -1,
        incorrect: -1,
        timer: this.timer,
      },
      functions: functions.map(() => ({ type: "ASM", chunks: -1 })),
      cycles: functions.map((program: string) => [
        program.split("\n").filter((instruction: asm) => instruction.match("^mov \\[ *rsp ")).length,
      ]),
    };
  }
  private lenMeasure(
    _batchSize: number,
    _numBatches: number,
    functions?: string[],
  ): CryptOptMeasureResult | null {
    if (!functions) {
      return null;
    }

    return {
      stats: {
        numFunctions: functions.length,
        runtime: -1,
        incorrect: -1,
        timer: this.timer,
      },
      functions: functions.map(() => ({ type: "ASM", chunks: -1 })),
      cycles: functions.map((program: string) => [
        program
          .split("\n")
          .map((instruction) => instruction.trim())
          .filter(
            (instruction: asm) =>
              instruction.length > 0 &&
              !instruction.startsWith("GLOBAL") &&
              !instruction.startsWith("SECTION") &&
              !instruction.startsWith(";") &&
              !instruction.match("^[a-zA-Z0-9_]+:$"),
          ).length,
      ]),
    };
  }
  private uiCAMeasure(
    _batchSize: number,
    _numBatches: number,
    functions?: string[],
  ): CryptOptMeasureResult | null {
    if (!functions) {
      return null;
    }
    if (!this.timer) {
      Logger.log("ERROR: no uiCA architecture specified.");
      return null;
    }

    return {
      stats: {
        numFunctions: functions.length,
        runtime: -1,
        incorrect: -1,
        timer: this.timer,
      },
      functions: functions.map(() => ({ type: "ASM", chunks: -1 })),
      cycles: functions.map((program: string) => {
        const randomString = sha1Hash(Math.ceil(Date.now() * Math.random())).toString(36);
        const tmpDir = join(tmpdir(), "CryptOpt.cache", randomString);
        const asmFile = "assembly.asm";

        //Write asm
        writeString(join(tmpDir, asmFile), program);
        const asmlineArgs = [asmFile, "-o", "binary"];

        //Write assemble to bin
        spawnSync("asmline", asmlineArgs, { cwd: tmpDir });

        // call uiCA
        const uiCAArgs = ["-TPonly", "-arch", this.timer, "-raw", join(tmpDir, "binary.bin")];
        const r = spawnSync("./uiCA", uiCAArgs);
        if (r.status != 0) {
          throw new Error(
            `uiCA command failed. STDERR:${r.stderr}, STDOUT: ${r.stdout}. May be because ./uiCA is not in the cwd.`,
          );
        }
        const tpout = spawnSync("./uiCA", uiCAArgs).stdout.toString();

        const tp = Number(tpout);
        if (isNaN(tp)) {
          console.error(
            `uiCA command's output is not a number. Possibly because the selected architecture does not support mulx, etc. STDERR:${r.stderr}, STDOUT: ${r.stdout}.`,
          );
        }
        Logger.log(`cleaning up uicaTemp Files in folder ${tmpDir}`);
        rmdir(tmpDir, () => {});

        return [tp];
      }),
    };
  }
}
