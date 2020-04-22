#!/usr/bin/bash

url="http://2018shell.picoctf.com:35349"

part1=$(curl $url | grep -E -o "picoCTF{.*")
echo $part1
part1_cut=${part1::-4}

cssPath="mycss.css"

part2=$(curl ${url}/${cssPath} | grep -E -o "c.*}" | tail -1)

echo ${part1_cut}${part2}