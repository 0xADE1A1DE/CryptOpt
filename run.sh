#!/usr/bin/env bash

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

# go into this working directory. Everything is relative from there
cd "$(dirname "${0}")" || exit 1

#run
PATH="${PATH}:$(realpath ./bins/node/bin)" /usr/bin/env node "./dist/CryptOpt.js"
"${@}"
