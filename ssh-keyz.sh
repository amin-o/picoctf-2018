#!/usr/bin/bash

url="2018shell4.picoctf.com"

echo "Username:" ; read username

ssh -T $username@$url "echo 'exiting...' && exit"
