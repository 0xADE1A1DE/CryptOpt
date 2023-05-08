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
import { existsSync, readFileSync, writeFileSync } from "fs";
import { resolve } from "path";

import { datadir, env, preprocessFunction } from "@/helper";
import Logger from "@/helper/Logger.class";
import { CryptOpt } from "@/types";

import { Converter } from "./converter";
import { Renamer } from "./renamer.class";

const cwd = resolve(datadir, "jasmin-bridge");

const { CC, CFLAGS } = env;

// Proior knowledge:
const CURVE_NAME = "curve25519";
const OUT_WIDTHS = [4 * 4];
const IN_WIDTHS = [4, 4, 4, 4, 4];
export class JasminBridge {
  private add_dbl: CryptOpt.Function;
  public get curve() {
    return CURVE_NAME;
  }
  private get filenameS() {
    return resolve(cwd, "ladder.s");
  }
  public get argwidth() {
    return Math.max(...OUT_WIDTHS.concat(IN_WIDTHS));
  }
  public get argnumin() {
    return IN_WIDTHS.length;
  }
  public get argnumout() {
    return OUT_WIDTHS.length;
  }
  public get bounds() {
    return this.add_dbl.returns[0].lbound as string[];
  }

  constructor() {
    const rawLines = readFileSync(resolve(cwd, "makeref")).toString().split("\n");

    const matchGroups = rawLines[0].match(
      /fn (?<name>\w+) \((?<params>(reg u64 [\w.]+,? ?)+)\) -> \(\) {/,
    )?.groups;
    if (!matchGroups) {
      throw new Error("unsupported function signature");
    }
    const args = matchGroups.params
      ?.split(",")
      .map((p) => p.trim().match(/reg u64 (?<name>[\w.]+)/)?.groups?.["name"])
      .filter((name) => name)
      .map((name) => name as string)
      .reduce(
        (acc, name: string, i) => {
          const width = OUT_WIDTHS.concat(IN_WIDTHS)[i];
          if (i < OUT_WIDTHS.length) {
            // still an out-argument
            acc.returns.push({
              name: Renamer.renameTo(name, `out${i + 1}`),
              datatype: `u64[${width}]`,
              lbound: Array(width).fill("0x0"),
              ubound: Array(width).fill("0xffffffffffffffff"),
            });
          } else {
            acc.arguments.push({
              name: Renamer.renameTo(name, `arg${i + 1 - OUT_WIDTHS.length}`),
              datatype: `u64[${width}]`,
              lbound: Array(width).fill("0x0"),
              ubound: Array(width).fill("0xffffffffffffffff"),
            });
          }

          return acc;
        },
        {
          arguments: [] as CryptOpt.Function["arguments"],
          returns: [] as CryptOpt.Function["returns"],
        },
      );
    if (!args) {
      throw new Error(rawLines[0] + "is not in the expected format");
    }
    // Logger.log(JSON.stringify(args));

    const body = rawLines.slice(1).flatMap((line, i) => {
      Logger.log(`\n\x1b[33mconverting \x1b[0m'\x1b[34m${line}\x1b[0m'.`);
      const ops = Converter.convert(line);
      ops.forEach((op) => {
        Logger.log(
          `\x1b[33m        to \x1b[0m ${op?.name.join(",")} ${op?.operation} ${op?.arguments.join(
            op?.operation,
          )} ; ${op?.parameters?.comment}`,
        );
        if (op.parameters?.comment) {
          op.parameters.comment = `l ${(i + 2).toString().padStart(4)}: ${op.parameters.comment}`;
        }
      });
      return ops;
    });

    writeFileSync(resolve(cwd, "jasmin_pre.json"), JSON.stringify(body, undefined, 2));
    this.add_dbl = preprocessFunction({
      operation: matchGroups.name,
      ...args,
      body,
    });
    writeFileSync(resolve(cwd, "jasmin.json"), JSON.stringify(this.add_dbl, undefined, 2));
  }

  getCryptOptFunction() {
    return this.add_dbl;
  }

  public machinecode(filename: string): string {
    if (!filename.endsWith(".so")) {
      throw Error(`filename must end with .so, but instead is '${filename}'`);
    }

    const opts = { env, cwd, shell: "/usr/bin/bash" };

    const command = `${CC} ${CFLAGS} -fPIC -shared -o ${filename} ${this.filenameS}`;
    Logger.log(`cmd to generate machinecode: ${command} w opts: ${JSON.stringify(opts)}`);
    execSync(command);

    Logger.log(
      ` file ('${filename}') now ${existsSync(filename) ? " does" : "does not "} exist, symbolname: ${
        this.add_dbl.operation
      }`,
    );

    return this.add_dbl.operation;
  }
}
