![Unit Tests](https://github.com/0xADE1A1DE/CryptOpt/actions/workflows/check.yml/badge.svg) ![Code Style](https://github.com/0xADE1A1DE/CryptOpt/actions/workflows/ts-formatting.yml/badge.svg) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7710435.svg)](https://doi.org/10.5281/zenodo.7710435)

# CryptOpt: Verified Compilation with Random Program Search for Cryptographic Primitives

CryptOpt is the result of a research project aiming to enhance the state-of-the-art of how we generate fast code for cryptographic primitives. 
CryptOpt is an optimizer, which feeds itself from [Fiat Cryptography](https://github.com/mit-plv/fiat-crypto), generates optimized x86-64 Assembly for field arithmetic, and then feeds that Assembly back into Fiat Cryptography for end-to-end formal verification.
With doing that, CryptOpt achieves much higher performance than GCC and Clang on many different micro-architectures, and in some cases even surpassing the performance hand-optimized Assembly.

The generated fast and verified assembly files are in the `fiat-amd64`-directory in the Fiat project and [here](generated/fiat-amd64). Here is the table from the research paper showcasing average speedups against GCC 12 / Clang 15 with respective highest optimization settings.

### Geometric means of Speedup CryptOpt vs. off- the-shelf compilers.
| Primitive   | Mul (Clang) | Mul (GCC)  | Square (Clang) | Square (GCC) |
|-------------|-------------|------------|----------------|--------------|
| Curve25519  | 1.25        | 1.16       | 1.18           | 1.17         |
| P-224       | 1.54        | 2.52       | 1.40           | 2.56         |
| P-256       | 1.70        | 2.61       | 1.63           | 2.59         |
| P-384       | 1.45        | 2.49       | 1.37           | 2.51         |
| SIKEp434    | 1.70        | 2.43       | 1.73           | 2.39         |
| Curve448    | 1.19        | 0.98       | 1.07           | 1.05         |
| P-521       | 1.30        | 0.97       | 1.35           | 1.03         |
| Poly1305    | 1.12        | 1.22       | 1.11           | 1.26         |
| secp256k1   | 1.80        | 2.62       | 1.71           | 2.54         |

## Use CryptOpt

If you want to optimize on your own machine, or a different primitive you can
1. Follow the instructions [in the INSTALL document](./INSTALL.md).
1. Run `./CryptOpt --help` to check if the installation worked.
1. Run `./CryptOpt` to see an optimization in action.
1. Follow the instructions [in the First Steps document](./First_Steps.md) to get a feeling of what is going on.

The CryptOpt optimizer can also be used with non-Fiat Cryptography input. For more information see the `./test/manual-bridge/`

## Research Papers

The paper has been published in PLDI 2023, and is available [online here](https://dl.acm.org/doi/pdf/10.1145/3591272) and [here](./papers/KuepperEWGCSTCCGWY23-PLDI23.pdf), the [BibTeX here](CITATION.bib).
The full version of the paper, featuring the appendix with detailed performance measurements, is available [online on arXiv here](https://arxiv.org/abs/2211.10665) and [here](./papers/KuepperEWGCSTCCGWY23-PLDI23-full.pdf).

The ICSE'23 DEMO paper titled [*CryptOpt: Automatic Optimization of Straightline Code*](https://conf.researchr.org/track/icse-2023/icse-2023-demonstrations), which explains the technical engineering effort in more detail [is available online here](https://arxiv.org/abs/2305.19586) and [here](./papers/KuepperEWGCSTCCGWY23-ICSE23-demo.pdf), the [BibTeX here](./papers/KuepperEWGCSTCCGWY23-ICSE23-demo.bib).

## Tracking usage of CryptOpt

We have used CryptOpt to generate code for:

1. `libsecp256k1`-compatible code (`./CryptOpt --curve secp256k1_dettman --memoryConstraints out1-arg1`) (PR #1329)
1. BLS12-381 Curves (`./CryptOpt --curve bls12_381_p`, `./CryptOpt --curve bls12_381_q`)
1. Curve25519 (solinas, i.e. saturated) code is integrated into BoringSSL [with this commit](https://boringssl.googlesource.com/boringssl/+/43f88915f97d1f7df489b4b706afdfa556ba2050) (slight manual adaptions needed, because BoringSSL requires `rbp` to point to the stack. See issue #144 in this repo.)

## Acknowledgements
#### This project was supported by:  
* The Air Force Office of Scientific Research (AFOSR) under award number FA9550-20-1-0425
* the ARC Discovery Early Career Researcher Award  DE200101577
* the ARC Discovery Projects DP200102364 and DP210102670
* The Blavatnik ICRC at Tel-Aviv University  
* Data61, CSIRO
* the National Science Foundation under grants CNS-1954712 and CNS-2130671
* the National Science Foundation Expedition on the Science of Deep Specification (award CCF-1521584)
* the Phoenix HPC service at the University of Adelaide
* and gifts from Amazon Web Services, AMD, Facebook, Google, Intel and the Tezos Foundation.
