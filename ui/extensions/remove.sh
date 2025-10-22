#!/bin/bash

opts="$(sed -e "s~|~~g" -e "s|,| |g" "$BLUEPRINT__FOLDER/.blueprint/extensions/blueprint/private/db/installed_extensions")"

if [[ $opts == "" ]]; then
  gum log -l "info" "No extensions are currently installed. Press ENTER to return."
  read -r
  export window="extensions-root"
  return
fi

# shellcheck disable=2086
choice=$(gum choose $opts --header="Remove extensions" --no-limit --height=10)

if [[ "$choice" == "" ]]; then
  export window="extensions-root"
  return
fi

clear
gum confirm
# shellcheck disable=2181
if ! [ $? -eq 0 ]; then
  export window="extensions-remove"
  return
fi

# shellcheck disable=2086
USER_CONFIRMED_REMOVAL="yes" blueprint -remove $choice

echo
gum log -l "info" "Press ENTER to continue"
read -r

export window="extensions-root"
