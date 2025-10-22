#!/bin/bash

case $(gum choose "Extensions" --header="blueprint-tui v$BLUEPRINT_TUI_VERSION") in
  Extensions)
    export window="extensions-root"
  ;;
esac
