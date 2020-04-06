#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# cd one directory up to ansible/
cd $(dirname "$0")

set -x
./syntax-check.sh
./ansible-lint.sh

echo "$0 completed successfully!"
