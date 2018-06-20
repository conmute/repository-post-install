#!/bin/bash

if [ "$(whereis brew)" = "" ]; then
    echo "Installing brew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Brew already installed"
fi

