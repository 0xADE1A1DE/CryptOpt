ROOT           := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

NODE_DIR       := $(ROOT)/bins/node
NODE           := $(ROOT)/bins/node/bin/node
NODE_VERSION   := 18.7.0

PATH           := $(PATH):$(NODE_DIR)/bin

BUILT_CRYPTOPT := $(ROOT)/dist/CryptOpt.js
BUILT_MS       := $(ROOT)/modules/MeasureSuite/dist/measureaddon.node

.PHONY: all check clean deepclean

all: clean $(BUILT_CRYPTOPT)

$(NODE):
	mkdir -p ./bins
	curl -L https://nodejs.org/dist/v$(NODE_VERSION)/node-v$(NODE_VERSION)-linux-x64.tar.xz | tar --extract --xz --directory ./bins
	mv -f ./bins/node-v$(NODE_VERSION)-linux-x64 "$(NODE_DIR)"

$(BUILT_MS): $(NODE)
	@test -d ./modules/MeasureSuite || echo "MeasureSuite is not there. Please init by updating git submodules" >&2
	@echo "Building MeasureSuite"
	CFLAGS="-I$(NODE_DIR)/include" PATH=$(PATH) npm clean-install

$(BUILT_CRYPTOPT): $(BUILT_MS)
	PATH=$(PATH) npm clean-install
	PATH=$(PATH) npm run pack
	@test -e "$(BUILT_CRYPTOPT)" && echo "Sucessfully built CryptOpt. :)"

check: $(BUILT_CRYPTOPT)
	PATH=$(PATH) npm run test

clean:
	rm -rf ./dist ./coverage

deepclean: clean
	rm -rf ./bins ./node_modules
	$(MAKE) deepclean -C ./modules/MeasureSuite

