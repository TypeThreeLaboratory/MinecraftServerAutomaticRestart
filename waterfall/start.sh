#!/bin/bash

#-----設定部分----- start

#screenの名前
screen_name=waterfall

#実行するコマンド
command="java -Xms128M -Xmx256M -jar waterfall-1.19-526.jar --nogui"

#-----設定部分----- end

cd $(dirname $0)
screen -UAmdS $screen_name $command
echo Start!! $screen_name
