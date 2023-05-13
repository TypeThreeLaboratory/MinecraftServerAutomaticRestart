#!/bin/bash

#-----設定部分----- start

#ユーザー名
user_name=server

#screenの名前
screen_name=minecraft

screen_name2=waterfall

#何秒に一回 screenが閉じたことをチェックするか
sleep_time=5

#-----設定部分----- end

cd $(dirname $0)
python3 sudo-reboot.py
if [ -n "$(screen -ls $user_name/ | grep -o $screen_name)" ]; then
    screen -p 0 -S $user_name/$screen_name -X eval 'stuff "stop"\015'
fi
while [ -n "$(screen -ls $user_name/ | grep -o $screen_name)" ]; do
    sleep $sleep_time
done

if [ -n "$(screen -ls $user_name/ | grep -o $screen_name2)" ]; then
    screen -p 0 -S $user_name/$screen_name2 -X eval 'stuff "end"\015'
fi
while [ -n "$(screen -ls $user_name/ | grep -o $screen_name2)" ]; do
    sleep $sleep_time
done

reboot
