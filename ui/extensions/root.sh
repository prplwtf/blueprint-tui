#!/bin/bash

case $(gum choose "Install" "Remove" --header="Extensions") in
  "Install")
    export window="extensions-install"
  ;;
  "Remove")
    export window="extensions-remove"
  ;;
  *)
    export window="root"
  ;;
esac
