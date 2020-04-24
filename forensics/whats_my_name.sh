#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/b7e6f97343b1e36e6f34f762e95dd819/myname.pcap"

file="myname.pcap"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

strings $file | grep -o -E 'picoCTF{.*}'

rm $file 