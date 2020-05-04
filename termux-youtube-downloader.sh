apt update && apt upgrade -y
termux-setup-storage
apt install python -y
pip install youtube-dl
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
mkdir -p ~/.config/youtube-dl
vim ~/.config/youtube-dl/config
--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f "best[height<=1080]"
mkdir ~/bin
cd ~/bin
vim termux-url-opener
youtube-dl $1
