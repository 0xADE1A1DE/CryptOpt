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
import { isXD } from "@/helper";
import Logger from "@/helper/Logger.class";
import { CryptOpt, Fiat } from "@/types";

const ARRAY_REG = /(?<base>[\w.]+)\[u64 (?<off>\d+) \]/;
type CryptOptNoLimb = Exclude<CryptOpt.Varname, CryptOpt.VarnameL>;

export class Renamer {
  private static _instance: Renamer;
  private mapping: Map<string, CryptOptNoLimb>;
  private pointer: number;

  private arrayAliases: Map<string, string>;

  private constructor() {
    this.mapping = new Map();
    this.arrayAliases = new Map();
    this.pointer = 0; // starting with x1;
  }

  private static get instance(): Renamer {
    if (typeof Renamer._instance === "undefined") {
      Renamer._instance = new Renamer();
    }
    return Renamer._instance;
  }

  private get bump(): CryptOptNoLimb {
    this.pointer++;
    return `x${this.pointer}`;
  }

  public static rename(original: string): CryptOptNoLimb {
    const m = Renamer.instance.mapping;
    let newVar = m.get(original);
    if (newVar) {
      Logger.log(`   \x1b[33mlook-up\x1b[0m  ${original} -> ${m.get(original)}`);
      return newVar;
    }
    const arrGroups = original.match(ARRAY_REG)?.groups;
    if (arrGroups) {
      const origArrayName = Renamer.instance.arrayAliases.get(arrGroups.base);
      if (origArrayName) {
        return Renamer.rename(`${origArrayName}[u64 ${Number(arrGroups.off)} ]`);
      }

      throw new Error(
        `Illegal State, ${original} seems to be an array, but its not in arrayAliases or in mapping.`,
      );
    }
    newVar = Renamer.instance.bump;

    m.set(original, newVar);
    Logger.log(`   \x1b[33mrenamed\x1b[0m  ${original} -> ${newVar}`);

    return newVar;
  }

  public static renameTo<T extends Fiat.ArgName | Fiat.OutName>(original: string, nameOverwrite: T): T {
    const m = Renamer.instance.mapping;
    if (!m.has(original)) {
      const newVar = nameOverwrite;

      // Dirty Hack to cast it.
      m.set(original, newVar as CryptOptNoLimb);
      Logger.log(`   \x1b[33mrenamed\x1b[0m  ${original} -> ${newVar}`);
    } else {
      Logger.log(`   \x1b[33mlook-up\x1b[0m  ${original} -> ${m.get(original)}`);
    }
    return m.get(original) as T;
  }
  public static initArray(symbol: string) {
    Renamer.instance.arrayAliases.set(symbol, symbol);

    Logger.log(`   \x1b[33mnew arr\x1b[0m  ${symbol} -> ${symbol}`);
  }

  public static addAlias(src: string, dest: string): void {
    if (src.startsWith("arg") || isXD(src)) {
      Renamer.instance.mapping.set(dest, src as CryptOptNoLimb);
      Logger.log(`\x1b[35mali arg/xN\x1b[0m  ${dest}-->${src}`);
      return;
    }

    const orig = Renamer.instance.mapping.get(src);
    if (orig) {
      Renamer.instance.mapping.set(dest, orig);
      Logger.log(`\x1b[35malias   st\x1b[0m  ${dest}--(${src})-->${orig}`);
      return;
    }

    // as a pointer-Alias
    // otherwise it could have been Array-alias'ed earlier
    const origArray = Renamer.instance.arrayAliases.get(src);
    if (origArray) {
      Logger.log(`\x1b[35malias A st\x1b[0m  ${dest}--(${src})-->${origArray}`);
      // if it has, set alias to orig array.
      Renamer.instance.arrayAliases.set(dest, origArray);
      return;
    }

    // as  '  h#0.4998 = fs.4992[u64 0 ]; /* u64 ''
    // , we want to check if 4992 has been aliase,
    const arrGroups = src.match(ARRAY_REG)?.groups;
    if (arrGroups) {
      const origArrayName = Renamer.instance.arrayAliases.get(arrGroups.base);
      if (origArrayName) {
        Renamer.addAlias(`${origArrayName}[u64 ${Number(arrGroups.off)} ]`, dest);
        return;
      }
      throw new Error(
        `Illegal State, ${src} seems to be an array, but its not in arrayAliases or in mapping.`,
      );
    }

    throw new Error(
      `${src} is has not been aliased to, nor it is xDD, nor argN[n] nor ArrayInit'ed, nor is an alias to an array. Giving up.`,
    );
  }
}

// This is the situation:

//fn add_doubl4 (reg u64 pr.856, reg u64 pinit.857, reg u64 px2.858, reg u64 pz2.859, reg u64 px3.860, reg u64 pz3.861) -> () {
//  ArrayInit(i_x2.4981);-------------------------------------------> add i_x2.4981 to ARRAY-set
//  i_x2.4981[u64 0 ] = (u64)[px2.858 + ((64u) 0)]; ----------------> resolves rhs to arg1[0], call addAlias, then m.set(lhs, 'arg1[0]')
//  x2.4988 = i_x2.4981;--------------------------------------------> calls addAlias, checks if 4981 is an array, yes, arrayAlias 4988 to 4981
//  fs.5025 = x2.4988; ---------------------------------------------> calls addAlias, 4988 is not an array, but is in arrayAlias, adds 5025 to 4981
//  g.5026 = fs.5025; ----------------------------------------------> calls addAlias, 5025 is not an array, but is in arrayAlias, adds 5026 to 4981
//  (cf.5036, h#0.5037) = #adc_64(h#0.5032, g.5026[u64 0 ], false);-> calls rename with g.5026[u64 0 ].
//
//essentially, g.5026[u64 0 ] needs to resolve to arg1[0]
//  (cf.5036, h#0.5037) = #adc_64(h#0.5032, g.5026[u64 0 ], false);
//
