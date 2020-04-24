#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/b96c236db4c32ed47e9958c7e461b3c4/flag.png"

file="flag.png"
file_name="flag"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

mv $file "$file_name.jpg"

printf "\n"
echo "picoCTF{extensions_are_a_lie}"

printf "\n"
read -n 1 -s -r -p "Press any key to delete $file_name.jpg and exit the program."

rm "$file_name.jpg"