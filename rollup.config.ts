import typescript from "@rollup/plugin-typescript";
import copy from "rollup-plugin-copy";
import { terser } from "rollup-plugin-terser";

const external = [
  "child_process",
  "crypto",
  "fs",
  "lodash-es",
  "measuresuite",
  "os",
  "path",
  "process",
  "simple-statistics",
  "yargs",
  "yargs/helpers",
];
export default [
  {
    input: "src/CryptOpt.ts",
    output: {
      dir: "dist",
      format: "es",
    },
    external,
    strictDeprecations: true,
    plugins: [
      typescript(),
      terser(),
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
