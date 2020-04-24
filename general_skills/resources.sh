#!/usr/bin/bash

url="https://picoctf.com/resources"

flag=$(curl $url | grep -E -o "picoCTF{.*zheli}")

printf "\n"

echo $flag