#!/bin/bash

if [ -x "$(command -v skypeforlinux)" ]; then
  echo 'Info: skypeforlinux is already installed.' >&2
  return
fi

echo "Installing Skype For Linux"
sudo apt install apt-transport-https -y
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -

echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
sudo apt update 
sudo apt install skypeforlinux -y
