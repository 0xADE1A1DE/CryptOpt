import * as fs from "fs";
import { omit } from "lodash";

import { sanityCheckAllocations, writeasm } from "@/helper";
import { getInstruction } from "@/instructionGeneration";
import { Model } from "@/model";
import { RegisterAllocator } from "@/registerAllocator";
import type { asm,CryptOpt } from "@/types";

const debug = false;
const CUR_ASM = "/tmp/curasm.asm";
const CUR_MODEL = "/tmp/curmodel.json";

export class Assembler {
  private static init(): void {
    const model_string = JSON.stringify(Model.nodesInTopologicalOrder);
    if (debug) {
      fs.writeFileSync(CUR_MODEL, model_string);
    }
    if (debug && fs.existsSync(CUR_ASM)) {
      // fs.renameSync(CUR_ASM, CUR_ASM + Date.now() + ".asm");
      fs.unlinkSync(CUR_ASM);
    }
  }
  public static assemble(resultspath: string): { stacklength: number; code: asm[] } {
    console.log("initializing Assembler.");
    Assembler.init();
    console.log("initializing RA.");
    const ra = RegisterAllocator.reset();

    const output = ra.pres;
    // right ater the construction in ra.pres will be prosa comments for which arg is in which reg

    console.log("initializing Model.");
    Model.startNewImplementation();
    let curOp: CryptOpt.StringInstruction | null = null;
    while ((curOp = Model.nextOperation())) {
      try {
        let s0, s1;

        if (debug) {
          const opString = `\n; ${curOp.name.join("--")}=${curOp.arguments.join(curOp.operation)}`;
          fs.appendFileSync(CUR_ASM, opString + "\n");
          output.push(opString);
          s0 = JSON.stringify(omit(curOp, "decisionsHot", "decisions"));
        }
        const ins = getInstruction(curOp);
        if (debug) {
          s1 = JSON.stringify(omit(curOp, "decisionsHot", "decisions"));
          if (s0 !== s1) {
            console.error("shall be tha same", s0, s1);
            throw new Error();
          }
          fs.appendFileSync(CUR_ASM, ins.join("\n") + "\n");
        }
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
    }
    const { pre, post, stacklength } = ra.finalize();

    return { code: pre.concat(output).concat(post), stacklength };
  }
}
