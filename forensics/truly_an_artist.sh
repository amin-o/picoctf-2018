#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/9b8863e30054675ce78328df28c601db/2018.png"

file="2018.png"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

#solution using zsteg : zsteg $file

#solution using strings and grep :

strings $file | grep -E -o "picoCTF{.*}"
 
rm $file