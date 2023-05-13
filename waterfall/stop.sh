#!/bin/bash

#-----設定部分----- start

#screenの名前
screen_name=waterfall

#何秒に一回 screenが閉じたことをチェックするか
sleep_time=5

#-----設定部分----- end

cd $(dirname $0)
if [ -n "$(screen -ls | grep -o $screen_name)" ]; then
    screen -p 0 -S $screen_name -X eval 'stuff "end"\015'
    while [ -n "$(screen -ls | grep -o $screen_name)" ]; do
        sleep $sleep_time
    done
fi
echo Stop!! $screen_name
