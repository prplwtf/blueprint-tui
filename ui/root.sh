#!/bin/bash

case $(gum choose "Artisan" "Extensions" "Exit" --header="blueprint-tui v$BLUEPRINT_TUI_VERSION") in
  Artisan)
    export window="artisan-root"
  ;;
  Extensions)
    export window="extensions-root"
  ;;
esac
