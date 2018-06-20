#!/bin/bash

echo "Configuring your GIT"

echo "Setup default user details:"

read -p 'Hello, who am I talking to?: ' fullName

echo "And whats your email, should match with GPG key email if any?"
read email

git config --global user.name "$fullName"
git config --global user.email $email

echo "Setup gpg information and use:"

echo "Here are the keys, Ok?"

gpg --list-secret-keys --keyid-format LONG

read -p "Press enter to continue"

read -p "Set user.signingkey: " signingkey

git config --global user.signingkey $signingkey

echo "Globally now all your commits will be signer with chosen key!"
echo "git config --global commit.gpgsign true"

git config --global commit.gpgsign true
