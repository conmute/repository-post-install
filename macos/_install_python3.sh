#!/bin/bash

if [ -x "$(command -v python3)" ]; then
    echo "Already installed: Python3"
else
    echo "Installing Python3"
    brew install python3

    echo 'Set profile locale configuration. This will fix errors with local when using pyenv install'
    echo 'export LC_ALL=en_US.UTF-8' >> ~/.bash_profile
    echo 'export LANG=en_US.UTF-8' >> ~/.bash_profile
    echo 'en_US.UTF-8 is set, if you need different change manually in ~/.bash_profile'

    echo 'Installing PyEnv'
    brew install pyenv
    echo 'export PATH="/Users/user/.pyenv:$PATH"' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
fi
