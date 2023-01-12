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

import { writeString } from "@/helper";
import { getInstruction } from "@/instructionGeneration/InstructionGenerator";
import { Model } from "@/model";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

import { sanityCheckAllocations } from "./assembler.helper";

export function assemble(resultspath: string): { stacklength: number; code: asm[] } {
  console.log("initializing RA.");
  const ra = RegisterAllocator.reset();

  const output = ra.pres;
  // right ater the construction in ra.pres will be prose comments for which arg is in which reg

  console.log("initializing Model.");
  Model.startNewImplementation();
  let curOp: CryptOpt.StringOperation | null = null;
  while ((curOp = Model.nextOperation())) {
    try {
      const ins = getInstruction(curOp);

      output.push(...ins);
      sanityCheckAllocations(curOp);
    } catch (e) {
      const ra = RegisterAllocator.getInstance();
      const pres = ra.pres;
      let allocs = ra.getCurrentAllocations();
      allocs = Object.fromEntries(Object.entries(allocs).sort(([e1], [e2]) => e1.localeCompare(e2)));

      console.warn({ curOperation: curOp, e, allocs, pres });
      console.error({ curOperation: curOp, e, allocs, pres });
      writeString(
        `${resultspath}/lastFail.asm`,
        output
          .map((i) => `\t${i}`)
          .concat(Model.order)
          .concat(`ErrorStack: ${e instanceof Error ? e.stack : JSON.stringify(e)}`)
          .join("\n") + `while doing ${JSON.stringify(curOp, undefined, 2)}`,
      );
      throw e;
    }
    RegisterAllocator.getInstance().clearOrphans();
  }
  const { pre, post, stacklength } = ra.finalize();
  const code = pre.concat(output).concat(post);

  return { code, stacklength };
}
