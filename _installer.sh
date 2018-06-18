#!/bin/bash

install_cmd=(
    dialog --separate-output --checklist "Please Select Things that you want to install:" 22 76 16
)
install_options=(
    update "Updage the system" off
    vsc "Visual Studio Code" on
    nvm "NVM: Node.js, NPM, YARN and NPX" on
    git "Git" on
    jre "JRE" on
    vlc "VLC Media Player" on
    chrome "Google Chrome" on
    skype "Skype" on
    telegram "Telegram" on
    slack "Slack" on
)
install_choices=$("${install_cmd[@]}" "${install_options[@]}" 2>&1 >/dev/tty)

for choice in $install_choices
do
    file="_install_$choice.sh"
    if [ -f "$file" ]
    then
        . $file
    else
        echo "ERR! $choice: No installation found"
    fi
done
