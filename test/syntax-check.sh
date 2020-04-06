#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

TEMP_PLAYS=/tmp/plays.txt
EXCLUDE_PLAYS_LIST=test/exclude-syntax-check-plays.txt

# cd one directory up to ansible/
cd $(dirname "$0")
cd ..

set -x
# Get a list of all *.yaml and *.yml files in ansible/ and ansible/playbooks_adhoc/ to check
ls -1 *.y*ml > "$TEMP_PLAYS"

# Check each play for syntax, excluding certain plays
for play in $(fgrep -v -f "$EXCLUDE_PLAYS_LIST" "$TEMP_PLAYS"); do
  pipenv run ansible-playbook --syntax-check "$play"
done
