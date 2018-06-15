#!/bin/bash

if [ -x "$(command -v scudcloud)" ]; then
  echo 'Info: scudcloud (aka Slack unnoficial for linux) is already installed.' >&2
  return
fi

echo "Installing scudcloud (aka Slack unnoficial for linux"

echo "Adding a repository and updatihng a packages list and updating configuration"
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt update && sudo apt dist-upgrade
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections

echo "Installing scudcloud"
sudo apt install scudcloud
