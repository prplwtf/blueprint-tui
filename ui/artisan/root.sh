#!/bin/bash

commands="$(php "$BLUEPRINT__FOLDER/artisan" list --raw | awk '{print $1}' | tr '\n' ' ')"

#shellcheck disable=SC2086
choice=$(gum choose --header="Artisan commands" ${commands//:/\:})

if [[ $choice == "" ]]; then
  export window="root"
  return
fi

php "$BLUEPRINT__FOLDER/artisan" "$choice"

echo
gum log -l "info" "Press ENTER to continue"
read -r

export window="artisan-root"
