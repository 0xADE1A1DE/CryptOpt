import typescript from "@rollup/plugin-typescript";
import copy from "rollup-plugin-copy";
import { terser } from "rollup-plugin-terser";

const external = [
  "child_process",
  "crypto",
  "fs-extra",
  "fs",
  "lodash-es",
  "measuresuite",
  "os",
  "path",
  "simple-statistics",
  "yargs",
];
export default [
  {
    input: "src/CryptOpt.ts",
    output: {
      dir: "dist",
      format: "es",
    },
    external,
    plugins: [
      typescript(),
      // terser(),
      copy({
        targets: [
          {
            src: ["src/bridge/fiat-bridge/data",],
            dest: "./dist/data/fiat-bridge/data",
          },
          {
            src: ["src/bridge/bitcoin-core-bridge/data",],
            dest: "./dist/data/bitcoin-core-bridge/data",
          },
        ],
      }),
    ],
  },
];
