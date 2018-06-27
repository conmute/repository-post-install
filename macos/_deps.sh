#!/bin/bash

if [ "$(whereis brew)" = "" ]; then
    echo "Installing brew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo 'brew tap caskroom/versions'
    brew tap caskroom/versions
    echo 'brew update'
    brew update
else
    echo "Brew already installed"
fi

