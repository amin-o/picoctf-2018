#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/b96c236db4c32ed47e9958c7e461b3c4/flag.png"

if test -f "flag.png" ; then

    mv "flag.png" "flag.jpg"
    echo "picoCTF{extensions_are_a_lie}"
    exit 1

fi

wget $url --no-check-certificate

mv "flag.png" "flag.jpg"

printf "\n"
echo "picoCTF{extensions_are_a_lie}"
rm flag.png
