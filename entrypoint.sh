#!/bin/bash
rclone version
mkdir /.config
mkdir /.config/rclone/
wget -nc $CONFIG_FILE_IN_URL -O '/.config/rclone/rclone.conf'
rclone listremotes > remotes.txt
service chrome-remote-desktop stop
wget https://raw.githubusercontent.com/javsubs91/JL/main/re.py
chmod +x ./re.py
python3 ./re.py
service chrome-remote-desktop start
service aria2 start
jupyter lab --ip=0.0.0.0 --port=$PORT --ServerApp.token='' --ServerApp.password='' --allow-root
