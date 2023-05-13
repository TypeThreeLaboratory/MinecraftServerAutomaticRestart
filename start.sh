#!/bin/bash
cd $(dirname $0)
bash main/start.sh &
bash waterfall/start.sh &