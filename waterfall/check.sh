#!/bin/bash

#-----設定部分----- start

#screenの名前
screen_name=waterfall

#-----設定部分----- end

cd $(dirname $0)
if [ -z "$(screen -ls | grep -o $screen_name)" ]; then
    bash start.sh
fi
