#!/bin/bash

if [ -x "$(command -v dialog)" ]; then
    echo 'Info: `dialog` is already installed.' >&2
else
    echo "Installing dialog for better UI/UX expirience in the shell"
    sudo apt-get install dialog
fi

if [ -x "$(command -v curl)" ]; then
    echo 'Info: `curl` is already installed.' >&2
else
    echo "Installing curl"
    sudo apt-get install curl
fi

if [ -d /usr/share/build-essential ]; then
    echo 'Info: `build-essential` is already installed.' >&2
else
    echo "Installing build-essential"
    sudo apt-get install build-essential
fi
