#!/bin/bash
cd ~
mkdir setup
cd setup
git clone https://github.com/polly5099/htpc-download-box
git clone https://github.com/polly5099/docker-pi-hole
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl enable docker
sudo systemctl start docker