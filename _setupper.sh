#!/bin/bash

setup_cmd=(
    dialog --separate-output --checklist "Please Select Things to Setup:" 22 76 16
)
setup_options=(
    ssh "Copy and add SSH keys from the store" off
    gpg "Copy and add GPG keys from a store" off
    git "Set GIT global configuration" off
)
setup_choices=$("${setup_cmd[@]}" "${setup_options[@]}" 2>&1 >/dev/tty)

for choice in $setup_choices
do
    file="_setup_$choice.sh"
    if [ -f "$file" ]
    then
        . $file
    else
        echo "ERR! $choice: No setup utility found"
    fi
done
