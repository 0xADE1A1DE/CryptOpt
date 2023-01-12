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
#
ROOT           := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

NODE_DIR       := $(ROOT)/bins/node
NODE           := $(ROOT)/bins/node/bin/node
NODE_VERSION   := 18.13.0

PATH           := $(NODE_DIR)/bin:$(PATH)

BUILT_CRYPTOPT := $(ROOT)/dist/CryptOpt.js

.PHONY: all build check clean deepclean

all: clean $(BUILT_CRYPTOPT)
build: $(BUILT_CRYPTOPT)

$(NODE):
	mkdir -p ./bins
	curl -L https://nodejs.org/dist/v$(NODE_VERSION)/node-v$(NODE_VERSION)-linux-x64.tar.xz | tar --extract --xz --directory ./bins
	mv -f ./bins/node-v$(NODE_VERSION)-linux-x64 "$(NODE_DIR)"

node_modules: 
	@echo "Installing dependencies"
	@CFLAGS="-I$(NODE_DIR)/include" PATH=$(PATH) npm $$(test -e ./package-lock.json && echo 'clean-install' || echo "install")

$(BUILT_CRYPTOPT): $(NODE) node_modules $(shell find ./src -type f -name '*ts')
	@echo "Building CryptOpt"
	@PATH=$(PATH) npm run bundle
	@test -e "$(@)" && touch $(@) && echo "Successfully built CryptOpt. :)"

check: $(BUILT_CRYPTOPT)
	PATH=$(PATH) npm run test-no-watch

clean:
	rm -rf ./dist ./coverage ./bundle.tar.gz ./bundle.zip

deepclean: clean
	rm -rf ./bins ./node_modules package-lock.json

install-zsh:
	install -v $(ROOT)/completion/_cryptopt /usr/local/share/zsh/site-functions && echo -e "Installed successfully\nRestart your shell to enjoy\n"

BUNDLE_FILES:=$(shell find . -type f ! -path './bundle*' -a ! -path '*node_modules*' -a ! -path '*results*' -a ! -path '*.git*' -a ! -path './bins/*' -a ! -path '*dist*')

dist: bundle.tar.gz bundle.zip

bundle.tar.gz: $(BUNDLE_FILES)
	tar czvf ${@} $(^)

bundle.zip: $(BUNDLE_FILES)
	zip ${@} $(^)
