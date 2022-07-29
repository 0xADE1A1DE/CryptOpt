import { writeasm } from "@/helper";
import { getInstruction } from "@/instructionGeneration/InstructionGenerator";
import { Model } from "@/model";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm, CryptOpt } from "@/types";

import { sanityCheckAllocations } from "./assembler.helper";

export function assemble(resultspath: string): { stacklength: number; code: asm[] } {
  console.log("initializing RA.");
  const ra = RegisterAllocator.reset();

  const output = ra.pres;
  // right ater the construction in ra.pres will be prosa comments for which arg is in which reg

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
      const allocs = ra.getCurrentAllocations();
      const pres = ra.pres;

      console.warn({ curOperation: curOp, e, allocs, pres });
      console.error({ curOperation: curOp, e, allocs, pres });
      writeasm(
        output
          .map((i) => `\t${i}`)
          .concat(Model.order)
          .concat(`ErrorStack: ${e instanceof Error ? e.stack : JSON.stringify(e)}`)
          .join("\n") + `while doing ${JSON.stringify(curOp, undefined, 2)}`,
        `${resultspath}/lastFail.asm`,
      );
      throw e;
    }
    RegisterAllocator.getInstance().clearOrphans();
  }
  const { pre, post, stacklength } = ra.finalize();

  return { code: pre.concat(output).concat(post), stacklength };
}
