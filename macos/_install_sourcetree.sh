#|/bin/bash

if [ "$(brew cask ls --versions Sourcetree)" != "" ]; then
    echo "Already installed: Sourcetree"
else
    echo "Installing: Sourcetree"
    brew cask install sourcetree
fi
