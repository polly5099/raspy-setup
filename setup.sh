#!/bin/bash
#https://www.shellhacks.com/raspberry-pi-mount-usb-drive-automatically/
sudo apt install vim -y
cd ~
mkdir setup
cd setup
git clone https://github.com/polly5099/htpc-download-box
git clone https://github.com/polly5099/docker-pi-hole
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi
sudo systemctl enable docker

sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip
sudo apt install samba samba-common smbclient
sudo cp ./smb.conf /etc/samba/smb.conf
sudo systemctl restart smbd.service
sudo systemctl restart nmbd.service
sudo pip3 install docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#raspi-setup enable ssh
#mount shit