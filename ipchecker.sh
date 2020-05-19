#!/bin/bash
# ipchecker.sh
# uploads IP addresses to folder

path="/root/ipchecker"
#path="/home/ed/RPi/ipchecker"
web_path="s3://edwardm.com/ipchecker"

host myip.opendns.com resolver1.opendns.com | grep address > $path/iplogger.log

aws s3 cp $path/iplogger.log  $web_path/
