#!/bin/bash

#-----設定部分----- start

#screenの名前
screen_name=minecraft

#実行するコマンド
command="java -Xms2G -Xmx2G -jar paper-1.19.4-524.jar --nogui"

#-----設定部分----- end

cd $(dirname $0)
python3 start.py
screen -UAmdS $screen_name $command
echo Start!! $screen_name
