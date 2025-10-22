#!/bin/bash

export window
window="root"
run_switcher=1

# shellcheck disable=SC2154
while [ "$run_switcher" -eq 1 ]; do
  next_window="$window"
  window=""

  window_path="ui/${next_window//-/\/}.sh"
  if [ -f "$window_path" ]; then
    # shellcheck disable=SC1090
    source "./$window_path" || run_switcher=0
    clear
  else
    run_switcher=0
  fi

  if [[ $next_window == "" ]]; then
    run_switcher=0
  fi
done
