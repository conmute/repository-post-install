#!/bin/bash

if [ -x "$(command -v docker)" ]; then
    echo "Already installed: Docker"
else
    echo "Installing docker"
    brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve

    echo "Resolving docker-machine should be runed from root"
    sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
    sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
fi
