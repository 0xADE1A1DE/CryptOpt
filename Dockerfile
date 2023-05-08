# Copyright 2022 University of Adelaide
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM ubuntu:jammy
# jammy is Ubuntu 22.10 LTS

RUN apt update && apt upgrade -y
# installing dependencies

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# general deps, fiat deps, cryptopt deps
RUN apt install -y jq git make vim tar zsh \
        autoconf clang curl g++ gcc gnuplot-nox libtool nasm pkg-config poppler-utils tmux

ENV asmlineversion 1.3.2
RUN curl -L https://github.com/0xADE1A1DE/AssemblyLine/releases/download/v${asmlineversion}/assemblyline-${asmlineversion}.tar.gz |\
        tar -xzf- -C /tmp/ && \
        cd /tmp/assemblyline-${asmlineversion} && ./configure && \
        make CFLAGS=-O3 all install && \
        ldconfig

# get and install CryptOpt
RUN git clone --jobs 3 --recurse-submodules  https://github.com/0xADE1A1DE/CryptOpt /root/CryptOpt
RUN cd /root/CryptOpt && \
        git checkout --recurse-submodules main && \
        make && \
        make install-zsh

WORKDIR /root/CryptOpt

# If a different version of fiat-binaries are required, copy / downlaod them
# here and overwrite the current ones in
# /root/CryptOpt/src/bridge/fiat-bridge/data/

# run the CryptOpt tests
RUN make check -C /root/CryptOpt

