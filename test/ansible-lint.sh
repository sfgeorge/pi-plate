#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# cd one directory up to ansible/
cd $(dirname "$0")
cd ..

set -x
pipenv run ansible-lint *.y*ml
