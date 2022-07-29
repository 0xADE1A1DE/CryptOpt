FROM ubuntu:jammy
# jammy is Ubuntu 22.10 LTS

RUN apt update && apt upgrade -y
# installing dependencies

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# general deps, fiat deps, cryptopt deps
RUN apt install -y git make vim tar \
        coq jq libcoq-ocaml-dev make ocaml-findlib \
        autoconf clang curl g++ gcc gnuplot-nox libtool nasm pkg-config poppler-utils tmux

ENV asmlineversion 1.3.0
RUN curl -L https://github.com/0xADE1A1DE/AssemblyLine/releases/download/v${asmlineversion}/assemblyline-${asmlineversion}.tar.gz |\
        tar -xzf- -C /tmp/ && \
        cd /tmp/assemblyline-${asmlineversion} && ./configure && \
        make CFLAGS=-O3 all install && \
        ldconfig

# get and install fiat-crypto
RUN git clone --jobs 3 --recurse-submodules --single-branch https://github.com/mit-plv/fiat-crypto /root/fiat-crypto
RUN cd /root/fiat-crypto && \
        git checkout popl-2023-cryptopt-initial-submission && \
        make -j2 -C /root/fiat-crypto standalone-ocaml

# get and install CryptOpt
RUN git clone --jobs 3 --recurse-submodules --single-branch https://github.com/0xADE1A1DE/CryptOpt /root/CryptOpt
RUN cd /root/CryptOpt && \
        git checkout dev && \
        make

WORKDIR /root/CryptOpt

# get latest version of Fiat-Binaries
RUN cd /root/CryptOpt/src/bridge/fiat-bridge/data && \
        cp /root/fiat-crypto/src/ExtractionOCaml/unsaturated_solinas /root/fiat-crypto/src/ExtractionOCaml/word_by_word_montgomery . && \
        sha256sum word_by_word_montgomery unsaturated_solinas > ./sha256sums

# run the CryptOpt tests
RUN make check -C /root/CryptOpt

