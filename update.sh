#!/bin/bash

cd /home/sebastian/dns
OLD_IP=$(cat ip.txt)
IP=$(curl icanhazip.com)
if [ "$OLD_IP" != "$IP" ]; then
  echo $IP > ./ip.txt
  DATE=$(date)
  git commit -am "update IP on $DATE" && git push
fi
