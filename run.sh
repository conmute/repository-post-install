#!/bin/bash

. _deps.sh
. _vars.sh

cmd=(
    dialog --separate-output --checklist "Please Select Things to Do:" 22 76 16
)
options=(
    installer "Install tools" on
    setupper "Setup tools" on
)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    file="_$choice.sh"
    if [ -f "$file" ]
    then
        . $file
    else
        echo "ERR! $choice: Selected choice is not implemented"
    fi
done
