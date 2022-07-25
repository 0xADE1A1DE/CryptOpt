#!/usr/bin/env bash
ROOT=$(dirname "${0}")
BIN_DIR="${ROOT}/bins"
NODE=${BIN_DIR}/node/bin/node
PATH="${PATH}:$(basename "${NODE}")"
export PATH

BUILT_CRYPTOPT="${ROOT}/dist/CryptOpt.js"

#run single
node "${BUILT_CRYPTOPT}" "${@}"
