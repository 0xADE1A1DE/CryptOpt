// rollup.config.js
import typescript from "@rollup/plugin-typescript";
import copy from 'rollup-plugin-copy'
import shell from 'rollup-plugin-shell'

const output = {
  dir: "dist",
  format: "cjs",
};
const external = [
  "child_process",
  "crypto",
  "fs-extra",
  "fs",
  "fs",
  "lodash",
  "measuresuite",
  "os",
  "path",
  "simple-statistics",
  "yargs",
]
export default [{
  input: "src/CryptOpt.ts",
  output, external,
  plugins: [typescript()],
},
{
  input: "src/BetAndRun.ts",
  output, external,
  plugins: [typescript(),
  copy({
    targets: [
      {
        src: ["src/bridge/fiat-bridge/word_by_word_montgomery",
          "src/bridge/fiat-bridge/unsaturated_solinas"], dest: "./dist"
      },
    ]
  }),
  shell("cd ./dist && sha256sum unsaturated_solinas word_by_word_montgomery > ./sha256sums")
  ],
}];
