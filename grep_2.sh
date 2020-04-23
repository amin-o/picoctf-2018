#!/usr/bin/bash

url="2018shell4.picoctf.com"

echo "Username:" ; read username

ssh $username@$url 'cd /problems/grep-2_4_06c2058761f24267033e7ca6ff9d9144/files && grep -r -o -E "picoCTF{.*}"'