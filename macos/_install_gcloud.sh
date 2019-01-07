#!/bin/bash

if [ -x "$(command -v gcloud)" ]; then
    echo "Already installed: gcloud"
else
    echo "Installing google-cloud-sdk"
    brew cask install google-cloud-sdk
fi
