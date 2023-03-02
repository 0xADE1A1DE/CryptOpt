import strip from "@rollup/plugin-strip";
import typescript from "@rollup/plugin-typescript";
import terser from "@rollup/plugin-terser";
import copy from "rollup-plugin-copy";

const external = [
  "child_process",
  "crypto",
  "fs",
  "lodash-es",
  "measuresuite",
  "os",
  "path",
  "process",
  "proper-lockfile",
  "simple-statistics",
  "url",
  "yargs",
  "yargs/helpers",
];

export default [
  {
    input: ["src/CryptOpt.ts", "src/CountCycle.ts"],
    output: {
      dir: "dist",
      format: "es",
    },
    external,
    strictDeprecations: true,
    plugins: [
      strip({
        include: ["**/*.ts"],
        functions: "DEBUG" in process.env ? [] : ["Logger.log"],
      }),
      typescript(),
      "DEBUG" in process.env ? undefined : terser(),
      copy({
        targets: [
          {
            src: ["src/bridge/fiat-bridge/data/*"],
            dest: "./dist/data/fiat-bridge",
          },
          {
            src: ["src/bridge/bitcoin-core-bridge/data/*"],
            dest: "./dist/data/bitcoin-core-bridge",
          },
        ],
      }),
    ],
  },
];
