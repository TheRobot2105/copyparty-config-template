#!/bin/bash
apt install --no-install-recommends python3-pil ffmpeg
mkdir -p /opt/copyparty/files/private
cp copyparty.service /etc/systemd/system/copyparty.service
systemctl daemon-reload
systemctl enable copyparty
systemctl start copyparty
systemctl status copyparty