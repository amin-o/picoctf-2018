#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/c23d909b52b9a7d96b15f024525d6795/husky.png"

file="husky.png"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

zsteg $file | grep -E -o "picoCTF{.*}"

rm husky.png