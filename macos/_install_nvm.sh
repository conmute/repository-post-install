#!/bin/bash

if [ "$(command -v nvm)" != "" ]; then
  echo 'Info: nvm is already installed.' >&2
else
  echo "Installing NVM"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

  echo "source ~/.bash_profile"
  source ~/.bash_profile
fi

[ -x "$(command -v npm)" ] && [ -x "$(command -v node)" ] && nvmConfigured=1 || nvmConfigured=0

if [ $nvmConfigured = 1 ]; then
  echo 'Info: npm/node is already installed.' >&2
else
  echo "Using node LTS version"
  nvm install --lts
fi

if [ -x "$(command -v npx)" ]; then
  echo 'Info: npx is already installed.' >&2
else
  echo "Installing NPX tooling globally"
  npm install -g npx
fi

if [ -x "$(command -v yarn)" ]; then
  echo 'Info: yarn is already installed.' >&2
else
  echo "Installing YARN tooling globally"
  npm install -g yarn
fi
