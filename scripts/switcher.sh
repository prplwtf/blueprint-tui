#!/bin/bash

export window
window="root"
run_switcher=1

# shellcheck disable=SC2154
while [ "$run_switcher" -eq 1 ]; do
  gum log -l "debug" "\$next_window is $window"
  next_window="$window"
  window=""

  window_path="ui/${next_window//-/\/}.sh"
  if [ -f "$window_path" ]; then
    gum log -l "debug" "$window_path exists"
    # shellcheck disable=SC1090
    source "./$window_path" || run_switcher=0
    clear
  else
    gum log -l "debug" "$window_path does not exist"
    run_switcher=0
  fi

  if [[ $next_window == "" ]]; then
    run_switcher=0
  fi
done

if [ "$run_switcher" -eq 0 ]; then
  gum log -l "debug" "switcher has been shut down"
fi
