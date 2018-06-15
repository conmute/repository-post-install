#!/bin/bash

IFS=';' read updates security_updates < <(/usr/lib/update-notifier/apt-check 2>&1)
echo "$updates updates available"
echo "$security_updates security updates available"

if (( updates != 0 )); then
    echo "There are updates available"
    echo "Updating and Upgrading"
    sudo apt-get update && sudo apt-get upgrade -y
fi
