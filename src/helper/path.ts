import { existsSync, realpathSync } from "fs";
import { ensureDirSync } from "fs-extra";
import { resolve } from "path";

import { parsedArgs } from "./argParse";

export function generateResultsPath(): string {
  const { curve, bridge, method, resultDir } = parsedArgs;
  return _genR({ curve, bridge, method, resultDir });
}

export function generateStateFileName(seed: number | string): string {
  return resolve(generateResultsPath() + `/_state_${seed}.json`).toString();
}

function _genR({
  curve,
  bridge,
  method,
  resultDir,
}: {
  curve: string;
  method: string;
  bridge?: string;
  resultDir?: string;
}): string {
  let c = curve;
  if (bridge && bridge != "fiat") {
    c = `${bridge}-${c}`;
  }

  const resFolder = resultDir ?? realpathSync(`${process.cwd()}/results`);
  const path = resolve(resFolder, c, method);

  if (!existsSync(path)) {
    console.warn(`${path} does not exist. Trying to create it.`);
    try {
      ensureDirSync(path);
    } catch (e) {
      console.error(
        `${path} does not exist. And could not be created due to Error:${e}. Create that folder manually and re-run. Exiting.`,
      );
      process.exit(2);
    }
  }
  return path;
}
