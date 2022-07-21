MAKE_ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
BIN_DIR=$(MAKE_ROOT_DIR)/bins
GIT_ROOT=$(MAKE_ROOT_DIR)/..
NODE=$(BIN_DIR)/node/bin/node
SEED?=$(shell date +%N)

ifeq ($(OS),Windows_NT)
$(error "windows not supported")
else
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
NODE_TAR_FLAGS=--xz
NODE_ARCH_FILE=.tar.xz
NODE_TYPE=linux
endif
ifeq ($(UNAME_S),Darwin)
NODE_ARCH_FILE=.tar.gz
NODE_TAR_FLAGS=-z
NODE_TYPE=darwin
endif
endif

NODE_VERSION=18.2.0
DEBUG=valgrind --track-origins=yes

.PHONY: all distclean clean install gen_asm population

all: gen_asm

$(NODE): Makefile
	mkdir -p $(BIN_DIR)
	rm -rf $(BIN_DIR)/node
	curl https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-${NODE_TYPE}-x64.tar.xz | tar x $(NODE_TAR_FLAGS) -C ./bins
	mv -f ./bins/node-v${NODE_VERSION}-${NODE_TYPE}-x64 $(BIN_DIR)/node
	touch ${@}

install: $(NODE)
	cd $(GIT_ROOT) && git submodule update --init --recursive
	PATH=$(BIN_DIR)/node/bin:$$PATH $(MAKE) -C automate install

gen_asm: $(NODE)
	PATH=$(BIN_DIR)/node/bin:$$PATH $(MAKE) -s -C automate generate_asm SEED=$(SEED)

population: $(NODE)
	PATH=$(BIN_DIR)/node/bin:$$PATH $(MAKE) -C automate populatio_dicentur SEED=$(SEED)

continue_best_state: $(NODE)
	PATH=$(BIN_DIR)/node/bin:$$PATH $(MAKE) -s -C automate continue_best_state SEED=$(SEED)


package: clean install
	tar zcf crypt-opt-package.tgz \
		./Makefile  \
		./automate/Makefile \
		./bins \
		./automate/node_modules \
		./automate/dist \
		./automate/measuresuite/package.json \
		./automate/measuresuite/node_modules \
		./automate/measuresuite/dist \
		./automate/measuresuite/src-ts/build/Release/measuresuite.node

run-package:
	PATH=$(BIN_DIR)/node/bin:$$PATH $(MAKE) -s -C automate _TASKSET_RUN_DIST_POP SEED=$(SEED)

check: $(NODE)
	PATH=$(BIN_DIR)/node/bin:$$PATH $(MAKE) -s -C automate check

clean:
	rm -rf  ./slurm* ./cur_*.asm ./tested_incorrect_*.asm killswitch
	$(MAKE) -C automate clean

distclean: clean
	rm -rf bins/node
	$(MAKE) -C automate distclean
	


