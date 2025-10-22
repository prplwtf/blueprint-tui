#!/bin/bash

opts="$(
  find "$BLUEPRINT__FOLDER"/*.blueprint 2> /dev/null |
  sed -e "s|^$BLUEPRINT__FOLDER/||g" -e "s|.blueprint$||g"
)"

if [[ $opts == "" ]]; then
  gum log -l "info" "No extensions are available. Press ENTER to return."
  read -r
  export window="extensions-root"
  return
fi

# shellcheck disable=2086
choice=$(gum choose $opts --header="Install extensions" --no-limit --height=10)

if [[ "$choice" == "" ]]; then
  export window="extensions-root"
  return
fi

# shellcheck disable=2086
blueprint -install $choice

echo
gum log -l "info" "Press ENTER to continue"
read -r

export window="extensions-root"
