#!/bin/bash

echo "Uninstalling irrelevant applications"
. _uninstall_slack/uninstall.sh

if [ -x "$(command -v slack)" ]; then
  echo 'Info: Slack is already installed.' >&2
  return
fi

echo "Installing Slack with snap"

sudo snap install slack --classic
