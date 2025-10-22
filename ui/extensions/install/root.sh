#!/bin/bash

choice=$(gum choose "e" --header="Install extensions")

if [[ "$choice" == "" ]]; then
  export window="extensions-root"
  return
fi
