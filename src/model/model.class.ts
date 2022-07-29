import fs from "fs";
import { cloneDeep } from "lodash-es";

import { CURVE_T } from "@/bridge/fiat-bridge/constants";
import { DECISION_IDENTIFIER } from "@/enums";
import {
  assertStringArguments,
  bl,
  cy,
  isCallerSave,
  limbify,
  matchArg,
  matchArgPrefix,
  rd,
  re,
  TEMP_VARNAME,
  toposort,
} from "@/helper";
import globals from "@/helper/globals";
import { BIAS, Paul } from "@/paul";
import type { CryptOpt } from "@/types";

import { createDependencyRelation, isADependentOnB, nodeLookupMap } from "./model.helper";

type methodParam = CryptOpt.Function["arguments"][number] | CryptOpt.Function["returns"][number];
export class Model {
  // this is set once.
  private static _nodes: Readonly<CryptOpt.StringOperation>[] = [];
  private static _order: number[] = []; // indexes into Model._nodes
  private static _neededBy: Map<string, Set<string>>;

  // from any name to the index of the node which calculates this name.
  private static _nodeLookupMap = new Map<string, number>();

  // convention here, is that the c-function is called with returns-params first, then arguments-params.
  // i.e.: function_test(*...returns.map({name}),*...arguments.map({name}) )
  private static _methodParameters: Array<methodParam> = [];
  private static _instance: null | Model = null;
  public static permutationStats = "";
  public static decisionStats = "";
  public static hardDependencies = new Set<string>();

  public static getInstance(): Model {
    if (Model._methodParameters.length == 0) {
      console.error("no instance if we have no nodes. Call Model._method= first.");
      process.exit(7);
    }
    if (!Model._instance) {
      Model._instance = new Model();
    }
    return Model._instance;
  }

  public static getState(): CryptOpt.StateFile {
    return {
      to: Model._order,
      body: Model._nodes,
      ratio: globals.currentRatio,
      convergence: globals.convergence,
      seed: Paul.state,
      time: {
        validate: globals.time.validate,
        generateFiat: globals.time.generateFiat,
        generateCryptopt: globals.time.generateCryptopt,
      },
    };
  }

  public static persist(filename: fs.PathLike) {
    fs.writeFileSync(filename, JSON.stringify(Model.getState()));
    filename = filename.toString();
    if (filename.includes("results")) {
      filename = "RES" + filename.split("results")[1];
    }
    process.stdout.write(`\nWrote ${cy}${filename}${re} `);
  }

  public static import(filename: fs.PathLike) {
    const parsed = JSON.parse(fs.readFileSync(filename).toString());
    const { to, body, seed, convergence } = parsed;
    const m = Model.getInstance();
    Model._order = to;
    Model._nodes = body;
    Paul.seed = seed;
    globals.convergence = convergence;
    if ("time" in parsed) {
      globals.time = parsed.time;
    }
    m._currentReadOrderIsValid = false;
    m.backupbody();
  }

  public static init(options: { curve: CURVE_T; json: CryptOpt.Function }): void {
    Model._methodParameters = options.json.returns;
    Model._methodParameters = Model._methodParameters.concat(options.json.arguments);

    // double check that hierarchical has been flattened
    try {
      options.json.body.forEach((e) => {
        assertStringArguments(e);
      });
    } catch (err) {
      console.error("puhhh.");
      console.error(err);
      throw new Error("Illegal Argument (json)");
    }

    Model._nodes = options.json.body as CryptOpt.StringOperation[];
    Model._nodeLookupMap = nodeLookupMap(Model._nodes);
    Model._neededBy = createDependencyRelation(Model._nodes, Model._nodeLookupMap).neededBy;
    Model._order = toposort(Model._nodes);
    console.log(Model._order.join(" @ "));
    const s = Model.nodesInTopologicalOrder
      .map((n) => `${n.name.join("--").padStart(15)} = ${n.arguments.join(` ${n.operation} `)}`)
      .join("\n");
    console.log(s);
  }

  public static get methodParametes(): methodParam[] {
    if (Model._methodParameters.length == 0) {
      throw new Error(`Not initialized. call Model.init()/Model.import first`);
    }
    return Model._methodParameters;
  }

  // public for debugging
  public static get nodesInTopologicalOrder(): CryptOpt.StringOperation[] {
    return Model._order.map((i) => Model._nodes[i]);
  }

  public static get nodeSetLength(): number {
    return Model._nodes.length;
  }

  // for debugging
  public static get order(): string {
    return JSON.stringify(Model._order);
  }

  private static _currentInstIdx = -1;

  // this is for spill decisions
  private _currentReadOrderIsValid = false;
  private _currentReadOrder = [] as string[];
  private get currentReadOrder(): string[] {
    if (!this._currentReadOrderIsValid) {
      this._currentReadOrder = Model.nodesInTopologicalOrder.reduce((acc, node) => {
        node.arguments.forEach((arg) => {
          const match = matchArg(arg);
          if (match?.groups?.base) acc.push(match.groups.base); // arg1
          acc.push(arg); // x1
          // although thats not true
          acc.push(...limbify(arg)); // x1_0, x1_1
        });
        return acc;
      }, [] as string[]);

      this._currentReadOrderIsValid = true;
    }
    return this._currentReadOrder;
  }

  public static chooseSpillValue(candidates: string[]): string {
    if (candidates.length < 1) {
      throw new Error("cannot choose from nothing, mate");
    }
    const m = Model.getInstance();
    const r = m.currentReadOrder;
    const fromIdx = Model._currentInstIdx;
    // check if there is caller saves in there
    const f = candidates.filter(isCallerSave);
    if (f.length > 0) {
      const choice = f[0];

      return choice;
    }
    if (candidates.length === 1) {
      const choice = candidates[0];

      return choice;
    }
    const map = candidates.reduce((map, candidate) => {
      const idx = r.indexOf(candidate, fromIdx);
      map[candidate] = idx == -1 ? Infinity : idx;
      return map;
    }, {} as { [varname: string]: number });
    // find the varname with the biggest index
    const lastRead = Object.entries(map).reduce((currentBest, current) => {
      return currentBest[1] > current[1] ? currentBest : current;
    });

    const choice = lastRead[0];

    return choice;
  }

  public static mutatePermutation(): void {
    const m = Model.getInstance();
    m.backupbody();

    // console.log(`mutatePermutation; candidateIndexes: ${candidates.join(",")}`);
    //

    const chosen = Paul.chooseBetween(Model._order.length);
    // const index = Paul.pick(candidates);
    // mutate
    const candidateIDX = Model._order[chosen];
    if (isNaN(candidateIDX)) {
      throw new Error(`${chosen} seems to be out of range`);
    }

    // forward
    let max = chosen;
    while (++max < Model._order.length) {
      if (isADependentOnB(Model._order[max], candidateIDX, Model._nodes, Model._neededBy)) {
        break;
      }
    }
    // once we found the first dependent one, or we are over the order_length
    // we want to have 'max' to te last one which is independent
    max--;

    // backward
    let min = chosen;
    while (--min >= 0) {
      if (isADependentOnB(candidateIDX, Model._order[min], Model._nodes, Model._neededBy)) {
        break;
      }
    }
    // once we found the first dependent one, or if min is now -1
    // we want to have 'min' to te last one which is independent
    min++;

    if (min == max) {
      return this.mutatePermutation();
    }

    const partner = min + 1 == max ? min : Paul.chooseBetween(max, min, BIAS.REVERSE_BELL);
    if (chosen == partner) {
      // would that ever happen ?
      return this.mutatePermutation();
    }
    const [a] = Model._order.splice(chosen, 1);

    const b = Model._order[partner];
    Model._order.splice(partner, 0, a);
    m._currentReadOrderIsValid = false;
    // indexes.length == 0; // invalidate read-cache if there was anything mutated.

    const astr = Model._nodes[a].name.join("--").padStart(11);
    const bstr = Model._nodes[b].name.join("--").padStart(11);

    console.log(
      `mutated (min${min}, max${max}, ch${chosen}, par${partner}) PERMUTATION:${astr}-->>${bstr} distance: ${
        chosen - partner
      }`,
    );
    console.log(
      `currentOrder: ${Model.nodesInTopologicalOrder
        .map((n) => n.name.join("--") + rd + "<-" + re + n.arguments.join(n.operation))
        .join(` ${bl}@${re} `)}`,
    );
    Model.permutationStats =
      "P[" +
      [
        min - chosen, // steps to go back
        max - chosen, // steps to go forwared
        chosen,
        partner - chosen, // steps chosen to go
        // chosen > partner ? "<" : ">", // direction
        // Math.abs(chosen - partner) // distance of moved node
        //   .toString()
        //   .padStart(3),
        // Math.abs(min - max) // possible max distance
      ]
        .map((a) => a.toString().padStart(4))
        .join("/") +
      "]";
  }

  public static mutateDecision(): boolean {
    Model.getInstance().backupbody();

    // find indexes of instructions, which have decisions attached
    const candidateIndexes = Model._nodes.reduce((prev, { decisionsHot }, idx) => {
      if (decisionsHot.length > 0) {
        prev.push(idx);
      }
      return prev;
    }, [] as number[]);
    console.log(`DECISION Mutation, which will be chosen from ${candidateIndexes.join("-")}.`);

    if (candidateIndexes.length === 0) {
      console.log("DECISION Mutation has been requested, but there was no hot decisions.");
      return false;
    }

    const cands = candidateIndexes.length.toString().padStart(3);
    const from = (Model._order.length - 1).toString().padStart(3);

    const candidateIdx = Paul.pick(candidateIndexes);
    const candidate = Model._nodes[candidateIdx];

    // get a random decison (as in decison group like "chose an arg", or "choose a flag") and save that in _key
    const keys = Object.keys(candidate.decisions);

    const key = (keys.length == 1
      ? keys[0]
      : keys[Paul.chooseBetween(keys.length)]) as unknown as DECISION_IDENTIFIER;

    const a = {
      [DECISION_IDENTIFIER.DI_CHOOSE_ARG]: "AR",
      [DECISION_IDENTIFIER.DI_HANDLE_FLAGS_KK]: "KK",
      [DECISION_IDENTIFIER.DI_FLAG]: "FL",
      [DECISION_IDENTIFIER.DI_INSTRUCTION_AND]: "B&",
      [DECISION_IDENTIFIER.DI_CHOOSE_IMM]: "IM",
      [DECISION_IDENTIFIER.DI_MULTIPLICATION_IMM]: "MU",
    } as { [c in DECISION_IDENTIFIER]: string };

    Model.decisionStats = `D[${a[key]}/${cands}/${from}]`;

    const dec = candidate.decisions[key];
    if (!dec) {
      throw new Error(`must have decisions! for key ${key}`);
    }
    // setting new random choice
    let choice = dec[0];
    const alternatives = dec[1];

    if (alternatives.length == 2) {
      // shortcut if len == 2, then just choose the other one
      choice ^= 1;
    } else {
      // choosing a number less than the alternatives.len and if its more than the old choice, then add one.
      // eg. alt: [a,b,c,d,e], choice: idx=2 -> c.
      // 0 <= newChoice <= 3,
      // if newChoice is 0..1 (-> a..b), thats final,
      // if its 2..3, then final choice is 3..4 -> [d,e]
      // this way, we dont need to draw multiple times but get a new choice by the first random draw
      const newChoice = Paul.chooseBetween(alternatives.length - 1);
      choice = newChoice >= choice ? newChoice + 1 : newChoice;
    }

    // and set new choice
    console.log(`mutated DECISION ${candidate.name.join("--")}[${key}]:${dec[0]} to: ${choice}`);
    // TS hack with the ??; we woulnt be here if the decisionss at _key are undefined
    (candidate.decisions[key] ?? [0])[0] = choice;

    return true;
  }

  private backup: { nodes: Readonly<CryptOpt.StringOperation>[]; order: number[] } = {
    nodes: [],
    order: [],
  };
  private loadbackupbody(): void {
    Model._nodes = this.backup.nodes;
    Model._order = this.backup.order;
  }
  private backupbody(): void {
    this.backup.nodes = cloneDeep(Model._nodes);
    this.backup.order = cloneDeep(Model._order);
  }

  public static revertLastMutation(): void {
    Model.getInstance().loadbackupbody();
  }

  /**
   * has always Dependents: argN[x], callersave's
   * never has dependanats: TEMP_VARNAME.
   * Rest, as in the graph.
   * @param varname shall be the limb. so not x100, if x100 is a u128
   */
  public static hasDependants(varname: string, namely?: Set<string>): boolean {
    if (varname === TEMP_VARNAME) {
      return false;
    }
    if (matchArgPrefix(varname) || isCallerSave(varname) || Model.hardDependencies.has(varname)) {
      // TODO: check whether any arg1[n] is read down the track.
      return true;
    }

    // if there is deps, which need varname
    const dependants = Model._neededBy.get(varname);
    // all of those need the value from varname
    // if all of those are already computed, varname can be overwritten
    let result = false;
    dependants?.forEach((dep) => {
      namely?.add(dep);

      // dep is calculated at node i;
      const i = Model._nodeLookupMap.get(dep);
      if (typeof i == "undefined") {
        throw new Error(`dep "${dep}" is never calculted. TSNH.`);
      }
      const indexOfDependencyInOrderArray = Model._order.indexOf(i);
      const hasNotBeenFullyCalculated = indexOfDependencyInOrderArray > Model._currentInstIdx;
      // as soon as we find one `dep` which has not been calculated
      if (hasNotBeenFullyCalculated) {
        // we return, that varname has deps
        result = true;
      }
    });
    namely?.add(`size: ${dependants?.size}`);
    return result;
  }

  public static calcDecisionStats(): string {
    const { hot, total } = Model._nodes.reduce(
      (map, { decisionsHot, decisions }) => {
        map.hot += decisionsHot.length;
        map.total += Object.keys(decisions).length;
        return map;
      },
      {
        hot: 0,
        total: 0,
      },
    );

    return `D[${hot.toString().padStart(3)}/${total.toString().padStart(3)}]`;
  }

  public static startNewImplementation(): void {
    // clearing Decision Hotness
    Model._nodes.forEach((node) => {
      node.decisionsHot.splice(0, node.decisionsHot.length);
    });

    // and initializing the pointer.
    Model._currentInstIdx = -1;
  }
  public static nextOperation(): CryptOpt.StringOperation | null {
    if (Model._currentInstIdx < Model._order.length) {
      const nextIdx = this._order[++Model._currentInstIdx];
      return Model._nodes[nextIdx];
    }
    return null;
  }
}
