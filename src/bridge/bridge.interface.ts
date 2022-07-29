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

import type { CryptOpt } from "@/types";

export interface Bridge {
  getCryptOptFunction(method: string, curve?: string): CryptOpt.Function;
  argwidth(curve: string, method: string): number;
  argnumin(method: string): number;
  argnumout(method: string): number;
  machinecode(sharedObject: string, method?: string, curve?: string): string;
}
