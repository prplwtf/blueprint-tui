#!/bin/bash

export BLUEPRINT_TUI_DIRECTORY
BLUEPRINT_TUI_DIRECTORY=$(realpath "$(dirname "$0" 2> /dev/null)" 2> /dev/null)

cd "$BLUEPRINT_TUI_DIRECTORY" || exit

if ! "$(command -v gum)"; then
  echo "gum is not installed"
  exit 1
fi

if [[ $BLUEPRINT__DIRECTORY == "" ]]; then
  # shellcheck disable=1091
  source blueprint 2> /dev/null
  if [[ $BLUEPRINT__DIRECTORY == "" ]]; then
    gum log "Blueprint is not installed"
    exit 1
  fi
fi

source config/default
first_run=0
# shellcheck source=config/user.example
source config/user || first_run=1

if [ "$first_run" -eq 1 ]; then
  chmod +x scripts/first_run.sh
  bash scripts/first_run.sh
fi

screen bash scripts/switcher.sh
