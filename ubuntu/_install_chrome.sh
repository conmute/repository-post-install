#!/bin/bash

if [ -x "$(command -v google-chrome-stable)" ]; then
  echo 'Info: google-chrome-stable is already installed.' >&2
  return
fi

echo "Installing Google Chrome Stable"

echo "Adding to repository list"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

echo "Updating a list and installing Google Chrome Stable browser"
sudo apt-get update
sudo apt-get install google-chrome-stable
