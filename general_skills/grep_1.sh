#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/7216e49d925b623c5d2cf9d141a6e180/file"

if ! test -f "file" ; then

    wget --no-check-certificate $url

fi

cat file | grep -E "picoCTF{.*}"

rm "file"