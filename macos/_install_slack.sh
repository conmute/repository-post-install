#|/bin/bash

if [ "$(brew cask ls --versions slack)" != "" ]; then
    echo "Already installed: Slack"
else
    echo "Installing: Slack"
    brew cask install slack
fi
