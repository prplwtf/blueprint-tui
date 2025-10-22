#!/bin/bash

if [ ! -f "config/user" ]; then
  cp config/user.example config/user
fi

chmod -R +x .
