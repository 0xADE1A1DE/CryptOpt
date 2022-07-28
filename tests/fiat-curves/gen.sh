#!/usr/bin/env bash
rm -f ./*.ts
for curve in curve25519 p224 p256 p384 p434 p448_solinas p521 poly1305 secp256k1; do
  for method in mul square; do
    cp base "${curve}-${method}.ts"
  done
done
