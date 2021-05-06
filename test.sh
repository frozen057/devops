#!/bin/sh
# переменные
DATE=`date "+%Y-%m-%d"`
echo "test" > /tmp/file_$DATE
rsync -avz /tmp/file_$DATE root@ip:tmp
ssh your_user@your_host "rm -f /home/captain/file.txt"
