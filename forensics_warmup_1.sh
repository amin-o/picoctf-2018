#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/d6487f8e2cbbb28b5168b512f0ac0710/flag.zip"

file="flag.zip"

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

for f in *.zip ; do

    unzip $f

done

printf "\n"
echo "picoCTF{welcome_to_forensics}"

printf "\n"
read -n 1 -s -r -p "Press any key to delete files created by this script and then exit."

rm $file flag.jpg