#!/usr/bin/env bash
ROOT=$(dirname "${0}")
BIN_DIR="${ROOT}/bins"
NODE=${BIN_DIR}/node/bin/node
PATH="${PATH}:$(basename "${NODE}")"
export PATH

BUILT_BAR="${ROOT}/dist/BetAndRun.js"

#run bet-and-run
node "${BUILT_BAR}" "${@}"
