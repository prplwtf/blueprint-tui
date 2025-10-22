#!/bin/bash

opts="$(sed -e "s~|~~g" -e "s|,| |g" "$BLUEPRINT__FOLDER/.blueprint/extensions/blueprint/private/db/installed_extensions")"
# shellcheck disable=2086
choice=$(gum choose $opts --header="Remove extensions" --no-limit --height=15)

if [[ "$choice" == "" ]]; then
  export window="extensions-root"
  return
fi

clear
if ! gum comfirm; then
  export window="extensions-remove"
  return
fi

# shellcheck disable=2086
USER_CONFIRMED_REMOVAL="yes" blueprint -remove $choice

echo -e "\n\n"
gum log -l "info" "Press ENTER to continue"
read -r

export window="extensions-root"
