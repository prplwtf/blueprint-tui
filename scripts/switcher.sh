#!/bin/bash

export window
window="menu"
run_switcher=1

# shellcheck disable=SC2154
while [ "$run_switcher" -eq 1 ]; do
  next_window="$window"
  window=""

  case "$next_window" in
    menu)
      source ./ui/menu.sh
    ;;
    *)
      run_switcher=0
    ;;
  esac
done
