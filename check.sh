#!/bin/bash
cd $(dirname $0)
bash main/check.sh &
bash waterfall/check.sh &