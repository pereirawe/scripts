#!/bin/bash
sudo su

apt update && apt upgrade -y

apt --fix-broken install

apt autoremove

# termux-setup-storage

apt install python -y

pip install --updrade pip

pip install youtube-dl

pip install instaloader