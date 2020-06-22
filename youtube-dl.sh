#!/bin/bash

# LOCATION URL
# https://raw.githubusercontent.com/pereirawe/scripts/master/termux-media-downloader/termux-url-opener

clear
bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}YOUTUBE MEDIA DOWNLOADER${normal}"
echo $'\nby @pereirawe'
echo "> ${1}"

if [[ $1 =~ ^.*youtu.*$ ]]; then

	echo $'\nDownload as an mp3 file ? (Y/N/E)'
	read -p "> " -n 1 -r
	echo $'\n'
	
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		echo 'Downloading mp3 file...'
		youtube-dl -f 'bestaudio' -o '/home/usuario/Música/%(title)s.f%(format_id)s.%(ext)s' $1

	elif [[ $REPLY =~ ^[Nn]$ ]]; then
		echo 'Downloading video...'
        youtube-dl --no-mtime -o "/home/usuario/Vídeos/%(title)s.%(ext)s" -f "best[height<=1080]" $1

	else
		echo "Exiting..."
        
	fi

elif [[ $1 =~ ^.*nourlselected.*$ ]]; then
	echo "ERROR1"

else
	echo Unhandled URL type: $1
fi

sleep 5
