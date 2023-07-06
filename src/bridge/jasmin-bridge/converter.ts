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

import { Fiat } from "@/types";

import { addsub } from "./converter.add.sub";
import { and } from "./converter.bitwise";
import { misc } from "./converter.misc";
import { movs } from "./converter.mov";
import { muls } from "./converter.mul";

const converters = new Map([...movs, ...misc, ...addsub, ...and, ...muls]);
export { converters };

export class Converter {
  public static convert(line: string): Fiat.DynArgument[] {
    for (const [regex, callback] of converters.entries()) {
      const g = line.match(regex)?.groups;
      if (g) {
        return callback(g);
      }
    }

    throw new Error(`could not find anything matching ${line}`);
  }
}
