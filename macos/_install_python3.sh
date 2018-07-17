#!/bin/bash

if [ -x "$(command -v python3)" ]; then
    echo "Already installed: Python3"
else
    echo "Installing Python3"
    brew install python3
    brew install pyenv
    echo 'export PATH="/Users/user/.pyenv:$PATH"' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
fi
