TS-SRC=$(shell git ls-files | grep .ts || find . -iname "*.ts" | grep -v node_modules)
NPM=npm
CURVE?=curve25519
BRIDGE?=fiat
METHOD?=square
EVALS?=10000
CYCLEGOAL?=10000
POPULATIO?=10
POPULATIORATIO?=0.005
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
# isolcpus=3 -> mask 0b1000 to schedule on cpu 3, which is isolated
CPUMASK?=ff
endif
#magic number: ASCII-CHARS of the developers name
SEED?=0x6a6f656c
GEN_ARGS=--curve $(CURVE) --method $(METHOD) --seed $(SEED) --evals $(EVALS)  --cyclegoal $(CYCLEGOAL) --bridge $(BRIDGE) $(SKIPMIX) $(SKIPPROOF) --append $(APPEND) --silent
POP_ARGS=$(GEN_ARGS) --populatio $(POPULATIO) --populatioratio $(POPULATIORATIO)


# to save the cur_A.asm and tested_incorrect_.asms
.SECONDARY: %.asm
.PRECIOUS: %.asm

.PHONY: all clean populatio_dicentur generate_asm

all: install populatio_dicentur

./node_modules/typescript/bin/tsc: ./package.json measuresuite/configure
	/usr/bin/env $(NPM) install
	touch ${@}

measuresuite/configure: measuresuite/autogen.sh measuresuite/configure.ac
	cd measuresuite && ./autogen.sh

./node_modules/measuresuite/dist/index.js: measuresuite/configure
	cd measuresuite && /usr/bin/env $(NPM) run install

./dist/fiat-bridge/sha256sums: ./dist/fiat-bridge/unsaturated_solinas ./dist/fiat-bridge/word_by_word_montgomery
	cd ./dist/fiat-bridge/ && sha256sum unsaturated_solinas word_by_word_montgomery > ./sha256sums

install: ./dist/generate_asm.js ./dist/fiat-bridge/sha256sums

./dist/generate_asm.js ./dist/populatio-dicentur.js &: ./node_modules/typescript/bin/tsc ./node_modules/measuresuite/dist/index.js $(TS-SRC)
	/usr/bin/env $(NPM) run compile
	make -s -C ./dist/bitcoin-core-bridge

generate_asm: ./dist/generate_asm.js
ifeq ($(UNAME_S),Linux)
	$(MAKE) _TASKSET_RUN_DIST_GEN
else
	${<} $(GEN_ARGS)
endif

# this is run internally by generate_asm or from parents' run-package goal
_TASKSET_RUN_DIST_GEN:
	taskset $(CPUMASK) ./dist/generate_asm.js $(GEN_ARGS)
populatio_dicentur: ./dist/populatio-dicentur.js ./dist/fiat-bridge/sha256sums
	$(MAKE) _TASKSET_RUN_DIST_POP

# this is run internally by populatio-dicentur or from parents' run-package goal
_TASKSET_RUN_DIST_POP:
	taskset $(CPUMASK) ./dist/populatio-dicentur.js $(POP_ARGS)


#  for straceing the taskset $(CPUMASK) strace node ${<} --curve $(CURVE) --method $(METHOD) --seed $(SEED) --evals $(EVALS) --cyclegoal $(CYCLEGOAL) --silent --populatio $(POPULATIO) --populatioratio $(POPULATIORATIO) --readBestState 2>/tmp/ltrace.log
continue_best_state: ./dist/populatio-dicentur.js ./dist/fiat-bridge/sha256sums
	taskset $(CPUMASK) ${<} $(POP_ARGS) --readBestState

check:
	/usr/bin/env $(NPM) test


clean: 
	$(MAKE) -C measuresuite clean
	rm -rf ./dist

distclean: clean
	$(MAKE) -C measuresuite distclean
	$(MAKE) -C bitcoin-core-bridge clean
	rm -rf node_modules results

