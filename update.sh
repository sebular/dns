#!/bin/bash

IP=$(curl icanhazip.com)
echo $IP >> ./list.txt
