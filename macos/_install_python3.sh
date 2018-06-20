#!/bin/bash

if [ -x "$(command -v python3)" ]; then
    echo "Already installed: Python3"
else
    echo "Installing Python3"
    brew install python3
fi
