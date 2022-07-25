import { execSync } from "child_process";
import { existsSync, readFileSync } from "fs";
import { groupBy } from "lodash";
import { resolve } from "path";

import { ERRORS } from "@/errors";
import { env, preprocessFunction } from "@/helper";
import type {  CryptOpt } from "@/types";

import { Bridge } from "../bridge.interface";
import { AVAILABLE_METHODS, METHOD_DETAILS, METHOD_T } from "./constants";
import { BCBPreprocessor } from "./preprocess";
import type { raw_T, structDef_T } from "./raw.type";

const createExecOpts = () => {
  const c = {
    env,
    cwd: __dirname,
  };
  c.env.CFLAGS = `-DUSE_ASM_X86_64 ${c.env.CFLAGS}`;
  return c;
};

export class BitcoinCoreBridge implements Bridge {
  public getCryptOptFunction(method: METHOD_T): CryptOpt.Function {
    if (!(method in METHOD_DETAILS)) {
      throw new Error(`unsupported method '${method}'. choose from ${AVAILABLE_METHODS.join(", ")}.`);
    }
    const tses = ["field.json", "scalar.json"].map((f) => resolve(__dirname, f));

    const [raw, structs] = tses.reduce(
      (acc, f) => {
        if (!existsSync(f)) {
          console.error(ERRORS.bcbFail.msg);
          process.exit(ERRORS.bcbFail.exitCode);
        }
        // read+Parse
        const parsed = JSON.parse(readFileSync(f).toString()) as Array<raw_T | structDef_T>;

        // group to funcs and struct defs
        const { structDef, func } = groupBy(parsed, (funcOrStructDef) =>
          "definition" in funcOrStructDef ? "structDef" : "func",
        );
        if (func) {
          acc[0].push(...(func as raw_T[]));
        }
        if (structDef) {
          acc[1].push(...(structDef as structDef_T[]));
        }

        return acc;
      },
      [[], []] as [raw_T[], structDef_T[]],
    );

    const found = raw.find(({ operation }) => operation == METHOD_DETAILS[method].name);

    if (!found) {
      throw new Error(
        `${METHOD_DETAILS[method].name} not found. TSNH. available '${raw.length}':${raw.map(
          ({ operation }) => operation,
        )}`,
      );
    }

    // raw preprocessing (i.e. llvm->fiat)
    const a = new BCBPreprocessor(structs).preprocessRaw(found);
    // 'normal' preprocessing (fiat-> cryptopt)
    const preprocessed = preprocessFunction(a);
    // fs.writeFileSync("/tmp/frombcb.json", JSON.stringify(preprocessed));
    return preprocessed;
  }

  public machinecode(method: METHOD_T, filename = "libcheckfunctions.so"): string {
    if (!filename.endsWith(".so")) {
      throw Error("filename must end with .so");
    }

    const opts = createExecOpts();
    const command = `make -C ${__dirname} ${filename}`;

    console.log(`executing cmd to generate machinecode: ${command} w opts: ${JSON.stringify(opts)}`);
    try {
      execSync(command, opts);
    } catch (e) {
      console.error(ERRORS.bcbMakeFail.msg);
      process.exit(ERRORS.bcbMakeFail.exitCode);
    }

    return METHOD_DETAILS[method].name;
  }

  public argnumin(m: METHOD_T): number {
    switch (m) {
      case "square":
      case "reduce":
        return 1;

      case "mul":
      case "scmul":
        return 2;
    }

    throw new Error(`unsupported method ${m}`);
  }

  public argnumout(_m: METHOD_T): number {
    return 1;
  }

  public argwidth(c: string, m: METHOD_T): number {
    switch (m) {
      case "mul":
      case "square":
        return 5;

      case "scmul": // more like out:8, in0:8
      case "reduce": // more like out:8, in0:4, in1:4
        return 8;
    }
    throw new Error(`unsupported method ${m}`);
  }
  public bounds(c: string, m: METHOD_T): CryptOpt.HexConstant[] {
    // from https://github.com/bitcoin-core/secp256k1/blob/423b6d19d373f1224fd671a982584d7e7900bc93/src/field_5x52_int128_impl.h#L162

    let bits = [] as number[]; // for field's
    if (m == "mul" || m == "square") {
      bits = [56, 56, 56, 56, 52]; // for field's
    }

    return bits.map((bitwidth) => {
      if (bitwidth % 4 !== 0) {
        throw new Error("unsuppoted bitwidth");
      }
      bitwidth /= 4;
      return `0x${Array(bitwidth).fill("f").join("")}` as CryptOpt.HexConstant;
    });
  }
}

// new BitcoinCoreBridge().getFiatFunction("square");
