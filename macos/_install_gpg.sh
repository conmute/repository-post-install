if [ -x "$(command -v gpg)" ]; then
    echo "Already installed: GPG"
else
    echo "Installing gpg"
    brew install gpg
fi

if [ "$(grep -nw ~/.bash_profile -e 'GPG_TTY')" != "" ]; then
    echo "GPG_TTY configured"
else
    echo 'export GPG_TTY=$(tty) >> ~/.bash_profile'
    echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile
fi
