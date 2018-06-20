#!/bin/bash

if [ -x "$(command -v java)" ]; then
  echo 'Info: JRE is already installed.' >&2
  return
fi

echo "Installing default JRE"
sudo apt install default-jre
