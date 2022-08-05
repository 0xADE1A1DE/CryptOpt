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

import {
  C_DI_HANDLE_FLAGS_KK,
  C_DI_INSTRUCTION_AND,
  C_DI_MULTIPLICATION_IMM,
  C_DI_SPILL_LOCATION,
  DECISION_IDENTIFIER,
  Flags,
} from "@/enums";
import { delimbify, isNotNoU } from "@/helper/lamdas";
import type { CryptOpt } from "@/types";

import { BIAS } from "./Paul.enum";
import { sha1Hash } from "./Paul.helper";

export class Paul {
  // https://en.wikipedia.org/wiki/Paul_the_Octopus

  /**
   * will choose one element of T, without mutating @param arr
   */
  private static choose<T>(arr: T[], decisionKey: DECISION_IDENTIFIER): T {
    const d = Paul._decisions;
    // if we have a decision key and there is something to read from  read and return
    const decision = d[decisionKey];
    if (!decision) {
      throw new Error(
        `TSNH; shouldnt happen because all appropriate decision should have been initalised e.g. for add, there must be a chosen choise for which flag to use. Check addDecisionProperty-function. ${decisionKey}, ${
          d[decisionKey]
        }, ${JSON.stringify(Paul.getInstance()._currentInstruction)}`,
      );
    }

    Paul.getInstance()._currentInstruction?.decisionsHot.push(decisionKey);

    const idx = decision[0];
    const possibilitiesOfThatSavedDecision = decision[1] as unknown as T[];
    // TODO: Maybe that cast can be type-checked; However, that should work because of the way it is being inserted into the decision-object.
    // small sanity check, that, if not even that is ok, that whole thing is broken. It does now guarantee anything however,
    const element = possibilitiesOfThatSavedDecision[idx];
    if (!arr.includes(element)) {
      // const m = `chosen element${JSON.stringify( element,
      // )} from decision (decisionKey: ${decisionKey}) is not even in possible values ${JSON.stringify( arr,)}. TSNH, returning first element instead.`;

      // so to handle all those special snow-flake cases of
      // arr: [x14_0, x15_0...], and in the hot decisions is just x14 and x15,
      // we want to delimbify the incoming array and if its then a match, return.
      // otherwise its a task for the debugger;
      // and to keep going we return arr[0], cuz i cant care less.
      if (typeof element === "string" && typeof arr[0] === "string") {
        const idxx = arr
          .map((a) => delimbify(a as unknown as CryptOpt.Varname))
          .indexOf(element as `x${number}`); // this can be any type. must not necessaryly be xNN, but for typescripts sake.
        if (idxx !== -1) {
          return arr[idxx];
        }
      }

      return arr[0];
    } else {
      // RegisterAllocator.getInstance().addToPreInstructions(
      // `;chose >>saved<< ${element} from:${possibilitiesOfThatSavedDecision.join( ", ")}[${idx}] and candidates: ${arr.join(", ")}`);
      return element;
    }
  }

  private static get _decisions() {
    const p = Paul.getInstance();
    if (!p._currentInstruction) {
      throw new Error("there is no instruction in Paul to read/write decicions... TSHN");
    }
    return p._currentInstruction.decisions;
  }

  public static chooseHandleFlagsKK(): C_DI_HANDLE_FLAGS_KK {
    return Paul.choose(
      [C_DI_HANDLE_FLAGS_KK.C_ADD, C_DI_HANDLE_FLAGS_KK.C_XOR_ADX, C_DI_HANDLE_FLAGS_KK.C_TEST_ADX],
      DECISION_IDENTIFIER.DI_HANDLE_FLAGS_KK,
    );
  }

  public static chooseSpillLocation(): C_DI_SPILL_LOCATION {
    return Paul.choose(
      [C_DI_SPILL_LOCATION.C_DI_MEM, C_DI_SPILL_LOCATION.C_DI_XMM_REG],
      DECISION_IDENTIFIER.DI_SPILL_LOCATION,
    );
  }

  /**
   * checks in currentInstruction if there is a decicion on C_FLAG. If not, chose randomly and save it.
   */
  public static chooseFlag(): Flags {
    return Paul.choose([Flags.CF, Flags.OF], DECISION_IDENTIFIER.DI_FLAG);
  }

  public static chooseInstructionAND(): C_DI_INSTRUCTION_AND {
    return Paul.choose(
      [C_DI_INSTRUCTION_AND.C_AND, C_DI_INSTRUCTION_AND.C_BZHI],
      DECISION_IDENTIFIER.DI_INSTRUCTION_AND,
    );
  }

  public static chooseMulImm(): C_DI_MULTIPLICATION_IMM {
    return Paul.choose(
      // superset, will choose from the saved ones preferably. this is just to double check...
      [
        C_DI_MULTIPLICATION_IMM.C_LEA,
        C_DI_MULTIPLICATION_IMM.C_IMUL,
        C_DI_MULTIPLICATION_IMM.C_SHL,
        C_DI_MULTIPLICATION_IMM.C_SHLX,
      ],
      DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM,
    );
  }

  public static chooseArg<T>(elements: T[]): T {
    return Paul.choose(elements, DECISION_IDENTIFIER.DI_CHOOSE_ARG);
  }

  public static chooseImm<T>(elements: T[]): T {
    return Paul.choose(elements, DECISION_IDENTIFIER.DI_CHOOSE_IMM);
  }

  /**
   * will splice (remove and return) one random element
   * from @param arr
   */
  public static pick<T extends NonNullable<unknown>>(arr: T[], spliceWith?: T): T {
    const idx = Paul.chooseBetween(arr.length);
    return (isNotNoU(spliceWith) ? arr.splice(idx, 1, spliceWith) : arr.splice(idx, 1))[0];
  }

  /**
   * for each element in @param arr, we roll an @param n sided dice.
   * If the dice ends up with 1, the current element is in the return array
   */
  public static nDiceChoose<T extends NonNullable<unknown>>(arr: T[], n = 1): T[] {
    return arr.filter((_) => Paul.chooseBetween(n) == 0);
  }

  /**
   * will update its state end return a number between
   * @param end-1 and @param start=0.
   * [start,end), start<=ret<end
   */
  public static chooseBetween(end: number, start = 0, bias = BIAS.UNIFORM): number {
    if (end == start) {
      throw new Error("\n\nrly?");
    }
    if (end == start + 1) {
      if (bias === BIAS.REVERSE_BELL) console.debug("\n\nrly? u sure m8?");
      return start;
    }
    const delta = Math.abs(end - start);
    if (bias === BIAS.UNIFORM) {
      Paul.updateState();
      // since the _state is one bit short its never being over .5. Thats why we multiply by 2
      const stateBasedFactor = (Paul.getInstance()._state * 2) / Number.MAX_SAFE_INTEGER;
      return Math.floor(stateBasedFactor * delta) + start;
    }

    const randn_bm = (min: number, max: number, skew: number): number => {
      let u = 0,
        v = 0;
      Paul.updateState();
      while (u === 0) u = (Paul.getInstance()._state * 2) / Number.MAX_SAFE_INTEGER; //Converting [0,1) to (0,1)
      Paul.updateState();
      while (v === 0) v = (Paul.getInstance()._state * 2) / Number.MAX_SAFE_INTEGER; //Converting [0,1) to (0,1)

      let num = Math.sqrt(-2.0 * Math.log(u)) * Math.cos(2.0 * Math.PI * v);

      num = num / 10.0 + 0.5; // Translate to 0 -> 1
      if (num > 1 || num < 0) {
        // resample between 0 and 1 if out of range
        return randn_bm(min, max, skew);
      } else {
        num = Math.pow(num, skew);
        num *= max - min; // Stretch to fill range
        num += min; // offset to min
        return Math.round(num);
      }
    };

    // gives numbers around d/2
    let n = randn_bm(0, delta, 1);
    // are now numbers around 0
    n -= delta / 2;

    n = Math.round(n);
    const r =
      n <= 0 // and if its left of 0, we want to subtract that negative number from start (as in: start+Math.abs(n))
        ? start - n
        : // otherwise we want to have end - small number
          end - n;

    if (r < start || r >= end) {
      throw new Error(
        `we sampled ${r}, but ${start}>=${r}<${end} does not hold. Did someone put floats maybe? TSNH.`,
      );
    }
    return r;
  }

  /**
   * will update its state to @param s
   */
  public static set seed(s: number) {
    Paul.getInstance()._state = s;
    Paul.getInstance()._initialSeed = s;
  }

  public static get state(): number {
    return Paul.getInstance()._state;
  }

  public static get initialSeed(): number {
    return Paul.getInstance()._initialSeed;
  }

  public static set currentInstruction(ci: CryptOpt.DynArgument) {
    Paul.getInstance()._currentInstruction = ci;
  }

  private _currentInstruction: CryptOpt.DynArgument | null = null;
  private static _instance: Paul | null = null;
  private _state = 0;
  private _initialSeed = 0;

  // Singleton
  private static getInstance(): Paul {
    if (!Paul._instance) {
      Paul._instance = new Paul();
    }
    return Paul._instance;
  }

  /**
   * will update its state by hashing its current state.
   * state <- hash(state)
   */
  private static updateState(): void {
    const instance = Paul.getInstance();
    instance._state = sha1Hash(instance._state);
  }
}
