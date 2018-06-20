#|/bin/bash

if [ "$(brew cask ls --versions telegram)" != "" ]; then
    echo "Already installed: Telegram"
else
    echo "Installing: Telegram"
    brew cask install telegram
fi
