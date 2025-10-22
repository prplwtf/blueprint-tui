#!/bin/bash

case $(gum choose "Install" "Remove" --header="Extensions") in
  "Install")
    export window="extensions-install-root"
  ;;
  *)
    export window="root"
  ;;
esac
