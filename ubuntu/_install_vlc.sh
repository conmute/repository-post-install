#!/bin/bash

if [ -x "$(command -v vlc)" ]; then
  echo 'Info: VLC player is already installed.' >&2
  return
fi

echo "Installing VLC player"

sudo apt install vlc
