#!/bin/bash

if [ -x "$(command -v git)" ]; then
  echo 'Info: git is already installed.' >&2
  return
fi

echo "Installing git"
sudo apt install git -y

echo "Installing gitk"
sudo apt install gitk -y
