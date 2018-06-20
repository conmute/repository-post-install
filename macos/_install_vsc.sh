#!/bin/bash

if [ -x "$(command -v code)" ]; then
    echo "Already installed: Visual Studio Code"
else
    echo "Installing Visual Studio Code"
    brew cask install visual-studio-code
fi
