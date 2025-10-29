#!/bin/bash
apt install --no-install-recommends python3-pil ffmpeg
mkdir -p /opt/copyparty/files/private
wget https://github.com/9001/copyparty/releases/latest/download/copyparty-sfx.py
mv -f copyparty-sfx.py copyparty.py
cp copyparty.service /etc/systemd/system/copyparty.service
systemctl daemon-reload
systemctl enable copyparty
systemctl start copyparty
systemctl status copyparty
