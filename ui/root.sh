#!/bin/bash

case $(gum choose "Extensions" "Exit" --header="blueprint-tui v$BLUEPRINT_TUI_VERSION") in
  Extensions)
    export window="extensions-root"
  ;;
esac
