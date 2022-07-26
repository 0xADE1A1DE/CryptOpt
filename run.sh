#!/usr/bin/env bash
BUILT="$(dirname "${0}")/dist/CryptOpt.js"

#run 
PATH="${PATH}:$(realpath './bins/node/bin')" /usr/bin/env node "${BUILT}" "${@}"
