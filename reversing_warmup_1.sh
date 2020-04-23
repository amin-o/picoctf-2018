#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/ed5cc27f269a3a4653f0a65b2e8a2d46/run"
file="run"

if ! test -f $file; then

    wget $url --no-check-certificate

fi

chmod +x $file ; ./$file ; rm $file 
