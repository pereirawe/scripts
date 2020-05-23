#!/bin/bash

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

cd ~/bin
# wget https://gist.githubusercontent.com/pereirawe/8bdd1205e6e2481e3e6d8259d51134ed/raw/4b8cc1d26fc0c87c3184f3cac29ca818101ef6e8/termux-url-opener
wget https://raw.githubusercontent.com/pereirawe/scripts/master/termux-media-downloader/termux-url-opener

# mkdir /data/data/com.termux/files/home/storage/shared/Twitter

# #CONFIGURACION PARA YOUTUBE
# mkdir -p ~/.config/youtube-dl
# echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f "best[height<=1080]"' >> ~/.config/youtube-dl/config

# #CONFIGURACION PARA INSTAGRAM
# mkdir -p ~/.config/instaloader
# echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Instagram/%(title)s.%(ext)s -f "best[height<=1080]"' >> ~/.config/instaloader/config

#CONFIGURACION PARA TWITTER
# mkdir -p ~/.config/youtube-dl
# echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Twitter/%(title)s.%(ext)s -f "best[height<=1080]"' >> ~/.config/youtube-dl/config

exit