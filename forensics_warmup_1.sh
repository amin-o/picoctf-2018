#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/d6487f8e2cbbb28b5168b512f0ac0710/flag.zip"

if test -f "flag.zip"

then

    echo -e "\e[7mflag.zip exists!"
    exit 1

fi

wget $url --no-check-certificate

for f in *.zip ; do

    unzip $f

done

printf "\n"
echo "picoCTF{welcome_to_forensics}"