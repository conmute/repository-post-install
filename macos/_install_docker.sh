#!/bin/bash

if [ -x "$(command -v docker)" ]; then
    echo "Already installed: Docker"
else
    echo "Installing docker"
    echo "The best option is to install Docker CE from official resource..."
    echo "Automatic script will be implemented in future"
fi
