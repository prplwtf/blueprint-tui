#!/bin/bash

if ! [ -x "$(command -v gum)" ]; then
  echo "gum is not installed"
  exit 1
fi

if ! [ -x "$(command -v screen)" ]; then
  echo "screen is not installed"
  exit 1
fi

if [[ $BLUEPRINT__FOLDER == "" ]]; then
  # shellcheck disable=1091
  source blueprint 2> /dev/null
  if [[ $BLUEPRINT__FOLDER == "" ]]; then
    gum log "Blueprint is not installed"
    exit 1
  fi
fi
