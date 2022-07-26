
import { Model } from "@/model";

import { cy, re } from "./constants";
import { generateStateFileName } from "./path";

export function registerExitHooks(seed: number) {
  const stateFileName = generateStateFileName(seed);

  process.on("exit", (exitcode: number) => {
    if (exitcode == 0) {
      process.stdout.write(`\nDone Success.${cy}${new Date().toISOString()}${re}`);
    } else {
      process.stderr.write(`\nDone with code: ${exitcode}\n`);
    }
    Model.persist(stateFileName);
    process.stdout.write("exiting.");
    process.exit(exitcode);
  });

  process.on("SIGINT", (signal: "SIGINT") => {
    process.stdout.write(`\ncaught ${signal}`);
    process.exit(13);
  });

  process.on("SIGTERM", (signal: "SIGTERM") => {
    process.stdout.write(`\ncaught ${signal}`);
    process.exit(13);
  });

}