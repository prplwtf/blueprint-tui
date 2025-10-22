#!/bin/bash

export BLUEPRINT_TUI_DIRECTORY
BLUEPRINT_TUI_DIRECTORY=$(realpath "$(dirname "$0" 2> /dev/null)" 2> /dev/null)

cd "$BLUEPRINT_TUI_DIRECTORY" || exit

source config/default
first_run=0
# shellcheck source=config/user.example
source config/user || first_run=1

if [ "$first_run" -eq 1 ]; then
  chmod +x scripts/first_run.sh
  bash scripts/first_run.sh
fi

screen bash scripts/switcher.sh
