#!/usr/bin/env bash
ROOT=$(dirname "${0}")
BIN_DIR="${ROOT}/bins"
NODE=${BIN_DIR}/node/bin/node
NODE_VERSION=18.2.0
BUILT_CRYPTOPT="${ROOT}/dist/CryptOpt.js"

set -e # die on error
download_node() {
  mkdir -p "${BIN_DIR}"
  curl -L https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz | tar --extract --xz --directory ./bins
  mv -f ./bins/node-v${NODE_VERSION}-linux-x64 "${BIN_DIR}/node"
  PATH="${PATH}:$(basename "${NODE}")"
  export PATH
}

build_ms(){
  echo "building MeasureSuite"
  cd ./modules/MeasureSuite || echo "MeasureSuite is not there. Please init" >&2
  CFLAGS="-I${BIN_DIR}/node/include" npm install
}

build_cryptopt() {
  ! test -x ./modules/MeasureSuite/build/Release/measuresuite.node && build_ms
  echo "building CryptOpt"
  clean
  npm run pack
  test -e "${BUILT_CRYPTOPT}" && echo "Sucessfully built CryptOpt. :)"
}

deepclean(){
  clean
  make clean -C ./modules/MeasureSuite
}

clean() {
  rm -rf ./dist
}

if ! test -x "${NODE}" || ! which node >/dev/null; then
  download_node
fi

if [[ "$*" =~ "--ms" ]]; then
  build_ms
fi

if [[ "$*" =~ "--clean" ]]; then
  deepclean
fi

if [[ "$*" =~ "-f" ]] || ! test -e "${BUILT_CRYPTOPT}"; then
  build_cryptopt
fi
