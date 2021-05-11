#!/bin/sh
# переменные
DATE=`date "+%Y-%m-%d"`
dest_dir="/tmp"
# создание файлов
# echo "test" > $dest_dir/file_$DATE
base64 /dev/urandom | head -c 10000000 > $dest_dir/file_$DATE
# копирование файлов на удаленную машину
rsync -avz $dest_dir/file_$DATE root@10.172.0.3:/tmp
# Удаление ротация файлов на удаленной машине
ssh root@10.172.0.3 "find $dest_dir/file* -mtime +7 -exec rm -rf {} \;"
