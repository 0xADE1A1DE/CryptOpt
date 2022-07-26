#!/usr/bin/env bash
ROOT=$(dirname "${0}")
BIN_DIR="${ROOT}/bins"
NODE=${BIN_DIR}/node/bin/node



BUILT_CRYPTOPT="${ROOT}/dist/CryptOpt.js"

#run single
PATH="${PATH}:$(basename "${NODE}")" /usr/bin/env node "${BUILT_CRYPTOPT}" "${@}"
