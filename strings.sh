#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/e78981e684a62559baaef12a27f0e918/strings"

if ! test -f "strings" ; then

    wget --no-check-certificate $url
fi

result=$(grep -a -o "picoCTF{.*}" strings)
echo $result

rm strings

