#!/usr/bin/env bash

ls llvm2cryptopt.sed opt1.ll | entr bash <(
  bash <<EOF
sed -f ./llvm2cryptopt.sed <./opt1.ll
EOF
)
