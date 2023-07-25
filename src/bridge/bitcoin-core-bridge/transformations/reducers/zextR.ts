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

import { groupBy } from "lodash-es";

import type { Fiat } from "@/types";

export type FiatDynArgWCryptoptOperations = Omit<Fiat.DynArgument, "operation"> & {
  operation: Fiat.DynArgument["operation"] | "zext";
};

// this will inline all zextR's, which are zext'ing to u128
export function zextR(body: FiatDynArgWCryptoptOperations[]): Fiat.DynArgument[] {
  enum E {
    zextOpt, // to reduce with
    otherOp,
  }

  const r = groupBy(body, ({ operation }) =>
    // the check for the datatype is to not include i1->64bit in the reducers
    // operation === "zext" && datatype === "u128" ? E.zextOpt : E.otherOp,
    operation === "zext" ? E.zextOpt : E.otherOp,
  );
  // if there is no zext-ops, just return all
  if (r[E.zextOpt]) {
    r[E.zextOpt].forEach((zextOp) => {
      r[E.otherOp].forEach((otherOp) => {
        otherOp.arguments = otherOp.arguments.map((arg) =>
          arg === zextOp.name[0] ? zextOp.arguments[0] : arg,
        ) as Fiat.ConstArgument[];
      });
    });
  }

  return r[E.otherOp] as Fiat.DynArgument[];
}
