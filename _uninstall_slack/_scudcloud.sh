if [ -x "$(command -v scudcloud)" ]; then
    echo 'Info: scudcloud (aka Slack unnoficial for linux) is already installed.' >&2
    echo 'Removing...'
    sudo apt-get purge --auto-remove soundcloud

    echo 'Removing from packages list and updating the lsit of available packages to aviod conflicts'
    sudo apt-add-repository -r ppa:rael-gc/scudcloud
    sudo apt update && sudo apt dist-upgrade
fi
