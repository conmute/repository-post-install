#!/bin/bash

bold=`tput bold`
reset=`tput sgr0`

echo "Configuring your SSH"

read -e -p "Enter the path to the '.ssh' folder with your keys: " FILEPATH

FILEPATH=$(echo $FILEPATH | sed 's/ /\\ /')
eval FILEPATH="$FILEPATH*"

pubStarts=(
    'ssh-rsa'
    'ssh-dss' 
    'ssh-ed25519'
    'ecdsa-sha2-nistp256'
    'ecdsa-sha2-nistp384'
    'ecdsa-sha2-nistp521'
)

echo "Creating ~/.ssh if it does not exists"
mkdir -p ~/.ssh

for f in $FILEPATH
do
    filename=$(basename $f)
    echo -e '\n'
    echo "${bold}Processing $f file...${reset}"

    for start in $pubStarts
    do
        isPrivateKey=`cat $f | grep -q $start ; echo $?`
        [ $isPrivateKey = 1 ] && [ -f "$f.pub" ] && privateHasPublicKey=1 || privateHasPublicKey=0

        if [ $isPrivateKey = 1 ]; then
            echo "Private key found ${bold}$filename ${reset}";
            echo "copying..."
            cp $f ~/.ssh/$filename
            chmod 600 ~/.ssh/$filename
        fi

        if [ $privateHasPublicKey = 1 ]; then
            echo "Public key found ${bold}$filename.pub${reset}";
            echo "copying..."
            cp $f.pub ~/.ssh/$filename.pub
        elif [ $isPrivateKey = 1 ]; then
            echo "${red}No public key found for${reset} ${bold}$f${reset} ${red}!${reset}"
            echo "${green}Generating...${reset}"
            ssh-keygen -c -f ~/.ssh/$filename
        fi

        if [ $isPrivateKey = 1 ]; then
            echo "${green}Adding key${reset} ${bold}$filename${reset} ${green}to SSH registry${reset}"
            ssh-add ~/.ssh/$filename
        fi

        if [ $isPrivateKey = 0 ]; then
            echo "Skipping invalid key or key without private ones ${filename}"; 
        fi

    done

done
