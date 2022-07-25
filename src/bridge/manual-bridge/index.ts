import { execSync } from "child_process";
import { existsSync, readFileSync } from "fs";

import { env, matchArg, preprocessFunction } from "@/helper";
import  type { Bridge, CryptOpt } from "@/types";

const { CC, CFLAGS } = env;

export class ManualBridge implements Bridge {
  private _coFunction: CryptOpt.Function;
  constructor(filepathJSON: string, private filepathC: string) {
    const parsed = JSON.parse(readFileSync(filepathJSON).toString());
    this._coFunction = preprocessFunction(parsed);

    // r.body = r.body.filter((i) => i.name[0].startsWith("x"));
    // const l = 29; // cuz max xDD is x29
    // const actual_width = 3;
    //
    // for (let i = 0; i < l; i++) {
    //   const t = `x100${l - 1 - i + actual_width}`;
    //   r.body.unshift({
    //     datatype: "u64",
    //     name: [t],
    //     arguments: [`x${l - 1 - i + 1}`, "0xffffffffffffffff"],
    //     operation: "&",
    //   } as Fiat.Instruction);
    //   r.body.unshift({
    //     datatype: "(auto)",
    //     name: [`out1[${l - 1 - i + actual_width}]`],
    //     operation: "=",
    //     arguments: [t],
    //   } as Fiat.Instruction);
    // }
    //
    // for (let i = 0; i < actual_width; i++) {
    //   r.body.unshift({
    //     datatype: "(auto)",
    //     name: [`out1[${actual_width - 1 - i}]`],
    //     operation: "=",
    //     arguments: [`arg1[${actual_width - 1 - i}]`],
    //   } as Fiat.Instruction);
    // }
  }

  public argnumin(): number {
    return this._coFunction.arguments.length;
  }

  public argnumout(): number {
    return this._coFunction.returns.length;
  }

  public argwidth(): number {
    const highestIndex = this._coFunction.body.reduce((acc, curr) => {
      const stringArgs = curr.arguments.filter((a) => typeof a === "string") as string[];
      stringArgs.concat(curr.name).forEach((s) => {
        const m = matchArg(s as string);
        if (m?.groups?.offset) {
          acc = Math.max(acc, Number(m.groups.offset));
        }
      });
      return acc;
    }, 0);
    return highestIndex + 1;
  }

  public getCryptOptFunction(): CryptOpt.Function {
    return this._coFunction;
  }

  /**
   * Compiles the c code to a shared object.
   * @returns the name of the symbol, which is being present in @param filename after this function is finished.
   * if force is false, it will check if the machinecode needs to be generated, and skip the step if its not necessary
   */
  public machinecode(
    filename = "libcheckfunctions.so",
    ccOverwrite: string | undefined = undefined,
    force = true,
  ): string {
    const methodname = this._coFunction.operation;

    if (!force && existsSync(filename)) {
      return methodname;
    }
    const cc = ccOverwrite ?? CC; // this is being used for the x-val, where in one session of the FiatBridge, the CC chagnes

    // write the c-code to a tmp file
    // const tmpDir = mkdtempSync(join(tmpdir(), "cryptopt-"));
    // const tmpFilename = "machinecode.c";
    // const tmpFileFullpath = join(tmpDir, tmpFilename);
    // writeFileSync(tmpFileFullpath, ManualBridge._fiatFunction.c);

    //compile it
    const command = `${cc} ${CFLAGS} -x c -fPIC -shared -o ${filename} ${this.filepathC}`;
    console.debug(`executing cmd to generate machinecode: ${command}`);
    execSync(command);

    // remove the tmp-stuff
    // rmSync(tmpDir, { recursive: true });

    return methodname;
  }
}
