if [ -x "$(command -v gpg)" ]; then
    echo "Already installed: GPG"
else
    echo "Installing gpg"
    brew install gpg
fi