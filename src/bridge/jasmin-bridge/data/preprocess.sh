#!/usr/bin/env bash

f=makeref

# -e 's@/\* [\w:]+ \*/@@g'\
sed ${f} -e '1,/export/d' |
  sed -e '/^ *\(reg\|stack\).*;/d' |
  tr -s '\n' '~' |
  sed -e 's/{/{\n/g' \
    -e 's@\*/~@*/\n@g' \
    -e 's/~//g' |
  tr -s ' ' |
  sed -e 's/^ /  /g' |
  tee ${f}.tmp
cp ${f}.tmp makeref
