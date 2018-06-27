#!/bin/bash

/usr/libexec/java_home &> /dev/null && INSTALLED=1 || INSTALLED=0

if [ $INSTALLED = 1 ]; then
    echo "Already installed: Java"
else
    echo "Installing java"
    brew cask install java
fi
