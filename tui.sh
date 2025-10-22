#!/bin/bash

export BLUEPRINT_TUI_DIRECTORY
BLUEPRINT_TUI_DIRECTORY=$(realpath "$(dirname "$0" 2> /dev/null)" 2> /dev/null)

cd "$BLUEPRINT_TUI_DIRECTORY" || exit

source config/default
# shellcheck source=config/user.example
source config/user || first_run=1

if [ "$first_run" -eq 1 ]; then
  bash scripts/first_run.sh
fi
