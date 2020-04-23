#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/ee6ed2afe1da153ae06e61d5ee26d52d/data.pcap"

file="data.pcap"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

#alernatively use wireshark but since the stream is over HTTP we can just use strings
#wireshark $file

strings $file | grep -o -E "picoCTF{.*}"

rm $file

