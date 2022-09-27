#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`

echo -e "[INFO] Remove Old Script"
rm /usr/bin/menu
sleep 2
echo -e " [INFO] Downloading New Script"
apt-get install ruby -y

# install lolcat
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
rm -f master.zip
cd lolcat-master/bin
gem install lolcat

# install figlet
apt-get install figlet 

# Install figlet ascii
sudo apt-get install figlet
git clone https://github.com/busyloop/lolcat
cd lolcat/bin && gem install lolcat
cd /usr/share
git clone https://github.com/xero/figlet-fonts
mv figlet-fonts/* figlet && rm –rf figlet-fonts

wget -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
echo -e " [INFO] Update Successfully"
sleep 2
exit
