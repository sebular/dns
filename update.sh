#!/bin/bash

IP=$(curl icanhazip.com)
echo $IP >> ./list.txt

git commit -am "whatever" && git push

