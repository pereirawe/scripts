#!/bin/bash

clear
bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}TERMUX MEDIA DOWNLOADER${normal} by @pereirawe\n"
echo $'\n'
echo "> ${1}"

if [[ $1 =~ ^.*youtu.*$ ]]; then
	
	echo $'\nDownload as an mp3 file ? (Y/N/E)'
	read -p "> " -n 1 -r
	echo $'\n'
	
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		echo 'Downloading mp3 file...'
		youtube-dl -f 'bestaudio' -o '/data/data/com.termux/files/home/storage/shared/Youtube/Music/%(title)s.f%(format_id)s.%(ext)s' $1
	elif [[ $REPLY =~ ^[Nn]$ ]]; then
		echo 'Downloading video...'
	  	# youtube-dl -o "/data/data/com.termux/files/home/storage/movies/youtube-dl/%(title)s.%(ext)s" -f "best[height<=480]" $1
        youtube-dl --no-mtime -o "/data/data/com.termux/files/home/storage/shared/Youtube/Movies/%(title)s.%(ext)s" -f "best[height<=1080]" $1

	else
		echo "Exiting..."
        
	fi

elif [[ $1 =~ ^.*instagram.*$ ]]; then
		echo 'Comming so soon...'

elif [[ $1 =~ ^.*twitter.*$ ]]; then
		echo 'Comming soon...'

elif [[ $1 =~ ^.*nourlselected.*$ ]]; then
	echo "ERROR1"

else
	echo Unhandled URL type: $1
fi

sleep 20