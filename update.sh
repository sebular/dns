#!/bin/bash

cd /home/sebastian/dns
IP=$(curl icanhazip.com)
DATE=$(date)
echo $IP >> ./ip-list.txt

git commit -am "whatever $DATE" && git push

