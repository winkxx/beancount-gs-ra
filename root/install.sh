#!/bin/bash

OS_type="$(uname -m)"
case "$OS_type" in
  x86_64|amd64)
    OS_type='amd64'
    ;;
  i?86|x86)
    OS_type='386'
    ;;
  aarch64|arm64)
    OS_type='arm64'
    ;;
  arm*)
    OS_type='arm'
    ;;
  *)
    echo 'OS type not supported'
    exit 2
    ;;
esac


echo $OS_type
#download_link="https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-${OS_type}-static.tar.xz"
#wget "$download_link"
#tar xvf ffmpeg-git-*-static.tar.xz && rm -rf ffmpeg-git-*-static.tar.xz
#mv ffmpeg-git-*/ffmpeg  ffmpeg-git-*/ffprobe /usr/bin/


# bash <(curl -sL install.emengweb.com/fclone.sh)
# mv /usr/bin/fclone /usr/bin/rclone
# sudo -v ; curl https://rclone.org/install.sh | sudo bash
# chmod 777 /usr/bin/rclone



#-----------------安装杂项--------------
pip3 install -U yt-dlp
wget https://github.com/P3TERX/Aria2-Pro-Core/releases/download/1.36.0_2021.08.22/aria2-1.36.0-static-linux-amd64.tar.gz
tar zxvf aria2-1.36.0-static-linux-amd64.tar.gz
sudo mv aria2c /usr/local/bin
sudo chmod 777 /root/test/
sudo mv /root/test /root/.aria2
pip3 install aria2p
sudo chmod 777 /root/.aria2/
#----------------安装nodejs------------------------
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install nodejs
#---------------安装beancount-gs--------------------
pip3 install beancount
git clone https://github.com/BaoXuebin/beancount-gs.git
cd beancount-gs
npm install && node server.js
#-------------------安装rclone-------------------
curl https://rclone.org/install.sh | sudo bash
#-------------------安装文件管理器---------------
curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash

#wget https://github.com/FolderMagic/FolderMagic/raw/master/FolderMagic
#chmod +x FolderMagic
