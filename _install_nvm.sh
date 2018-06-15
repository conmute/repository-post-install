#!/bin/bash

if [ -x "$(command -v npx)" ]; then
  echo 'Info: npx is already installed.' >&2
  return
fi

if [ -x "$(command -v npm)" ]; then
  echo 'Info: npm is already installed.' >&2
  return
fi

if [ -x "$(command -v node)" ]; then
  echo 'Info: node is already installed.' >&2
  return
fi

if [ -x "$(command -v nvm)" ]; then
  echo 'Info: nvm is already installed.' >&2
  return
fi

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

echo "source ~/.bashrc"
source ~/.bashrc

echo "Using node LTS version"
nvm install --lts

echo "Installing NPX tooling globally"
npm install -g npx
