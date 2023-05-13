#!/bin/bash
cd $(dirname $0)
bash main/reboot.sh &
bash waterfall/reboot.sh &