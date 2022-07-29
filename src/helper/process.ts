import { Model } from "@/model";

import { cy, re } from "./constants";
import { generateResultFilename } from "./path";

export function registerExitHooks(seed: number) {
  const stateFileName = generateResultFilename(seed);

  process.on("exit", (exitcode: number) => {
    if (exitcode == 0) {
      process.stdout.write(`\nDone Success. ${cy}${new Date().toISOString()}${re}\n`);
    } else {
      process.stderr.write(`\nDone with code: ${exitcode}\n`);
    }
    Model.persist(stateFileName);
    process.stdout.write("exiting.\n");
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
