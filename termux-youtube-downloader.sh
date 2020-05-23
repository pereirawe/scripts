apt update && apt upgrade -y

termux-setup-storage
apt install python -y
pip install --updrade pip
pip install youtube-dl
mkdir /data/data/com.termux/files/home/storage/shared/Youtube
mkdir -p ~/.config/youtube-dl
echo '--no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f "best[height<=1080]"' >> ~/.config/youtube-dl/config
mkdir ~/bin
cd ~/bin
echo 'youtube-dl $1' >> termux-url-opener
