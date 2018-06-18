#!/bin/bash

if [ ! -f /opt/telegram/Telegram.sh ]; then
  echo 'Info: telegram is already installed.' >&2
  return
fi

echo "Installing telegram"

echo "Adding repository and updating the pakage list"
sudo add-apt-repository ppa:atareao/telegram
sudo apt-get update

echo "Running installer"
sudo apt-get install telegram
