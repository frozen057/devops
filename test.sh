#!/bin/sh
echo "test" > /tmp/file
rsync -avz /tmp/file root@ip:tmp
