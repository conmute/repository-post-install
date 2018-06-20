#!/bin/bash

bold=`tput bold`
reset=`tput sgr0`

echo "Configuring your GPG"

echo "..."

echo "... actually we are just copying the ~/.gnupg/ folder to /home/.gnupg and that it"

read -e -p "Enter the path to the backuped '.gnupg' folder with your keys: " FILEPATH

FILEPATH=$(echo $FILEPATH | sed 's/ /\\ /')
eval FILEPATH="$FILEPATH*"

echo "Creating ~/.gnupg if it does not exists"
mkdir -p ~/.gnupg

echo "Just copying all the files"
cp -r $FILEPATH ~/.gnupg

echo "Fixing permisions issue if any"
chmod 700 -R ~/.gnupg

echo "See now your keys"
gpg --list-keys
