#!/bin/bash
cd $(dirname $0)
python3 reboot.py
bash stop.sh
bash start.sh
