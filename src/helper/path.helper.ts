import { existsSync, realpathSync } from "fs";
import { ensureDirSync } from "fs-extra";
import { resolve } from "path";

export function generateResultsPath({
  curve,
  method,
  bridge,
}: {
  curve: string;
  method: string;
  bridge?: string;
}): string {
  let c = curve;
  if (bridge && bridge != "fiat") {
    c = `${bridge}-${curve}`;
  }

  const path =
    realpathSync(`${process.cwd()}/automate/..`.replace("automate/automate", "automate")) +
    `/results/${c}/${method}`;

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
export function generateStateFileName({
  curve,
  method,
  seed,
  bridge,
}: {
  curve: string;
  method: string;
  seed: number | string;
  bridge?: string;
}): string {
  return resolve(generateResultsPath({ curve, method, bridge }) + `/_state_${seed}.json`).toString();
}
