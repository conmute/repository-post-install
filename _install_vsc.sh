#!/bin/bash

if [ -x "$(command -v code)" ]; then
  echo 'Info: code is already installed.' >&2
  return
fi

echo "Installing Visual Studio Code"

echo "add microsoft repository"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

echo "run install vsc"
sudo apt-get update
sudo apt-get install code
