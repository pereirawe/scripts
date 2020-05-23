#!/bin/bash

# LOCATION URL
# https://raw.githubusercontent.com/pereirawe/scripts/master/termux-media-downloader/termux-url-opener

clear
bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}INSTALANDO TERMUX MEDIA DOWNLOADER${normal}"
echo $'\nby @pereirawe'
echo "> ${1}"

echo $'\n Instalar desde cero? (Y)'
read -p "> " -n 1 -r
echo $'\n'

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # ACTUALIZAR TODO
    apt update && apt upgrade -y
    apt --fix-broken install
    apt autoremove

    # ACTIVAR EL ALMACENAMIENTO DE TERMUX
    termux-setup-storage
    # INSTALAR PYTHON, PIP Y LIBRERIAS
    apt install python -y
    pip install --updrade pip
    pip install youtube-dl
    pip install instaloader

    # DIRECTORIOS DE ALMACENAMIENTO
    mkdir ~/bin
    mkdir /data/data/com.termux/files/home/storage/shared/Youtube/Movies
    mkdir /data/data/com.termux/files/home/storage/shared/Youtube/Music
    mkdir /data/data/com.termux/files/home/storage/shared/Instagram

fi

cd ~/bin
rm -f termux-url-opener
wget https://raw.githubusercontent.com/pereirawe/scripts/master/termux-media-downloader/termux-url-opener

exit
