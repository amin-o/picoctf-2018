#!/usr/bin/bash

url="http://2018shell.picoctf.com:55790"

flag=$(curl -s $url | tr "'" "#" | grep -E -o "#.*#" | tac | tr -d "#" | tr -d "\n")

echo $flag
 