#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/040c56434beb57348cc5032272c04350/animals.dd"

file="animals.dd"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

#recover the data using photorec
photorec $file

echo "picoCTF{th3_5n4p_happ3n3d}"

rm $file