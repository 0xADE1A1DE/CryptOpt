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

type Err = { exitCode: number; msg: string };
export const ERRORS: { [k: string]: Err } = {
  measureGeneric: {
    exitCode: 20,
    msg: "measuresuite.measure should return a result but didn't.",
  },
  measureIncorrect: {
    exitCode: 21,
    msg: `measuresuite.measure should return a result but didn't, because the result is not the same as per measureCheck. RES/tested_incorrect{_A.asm,_B.asm,.json} haven been written for debug.`,
  },
  measureInvalid: {
    exitCode: 22,
    msg: `measuresuite.measure should return a result but didn't, because the ASM string could not be assembled. RES/tested_incorrect{_A.asm,_B.asm,.json} haven been written for debug.`,
  },
  measureInsufficientData: {
    exitCode: 23,
    msg: "measuresuite.measure did not yield even one data point.",
  },
  measureCannotAnalyze: {
    exitCode: 24,
    msg: "measuresuite.measure did yield data points, but could not be analyzed.",
  },
  bcbMakeFail: {
    exitCode: 30,
    msg: "While Executing `make` in bitcoin-core-bridge, there was an error.",
  },
  bcbFail: {
    exitCode: 31,
    msg: "While reading files in bitcoin-core-bridge, there was an error.",
  },
  parameterParseFail: {
    exitCode: 41,
    msg: "A parameter from the command line could not be parsed.",
  },
  proofUnsuccessful: {
    exitCode: 50,
    msg: `Could not prove correct. Aborting mission. I repeat: Abort mission now.`,
  },
  unsupportedParameterCombination: {
    exitCode: 60,
    msg: "the given combination of generating code with Fiat Cryptography is currently unsupported.",
  },
};

export function errorOut(e: Err): never {
  console.error(e.msg);
  process.exit(e.exitCode);
}
