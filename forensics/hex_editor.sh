#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/ccad03a151a0edac8bd01e665a595b7a/hex_editor.jpg"

file="hex_editor.jpg"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

strings $file | grep -o -E "picoCTF{.*}"

rm $file