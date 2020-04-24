#!/usr/bin/bash

port="35349"
url="http://2018shell.picoctf.com:$port"

part1=$(curl $url | grep -E -o "picoCTF{.*")
part1_cut=${part1::-4}

cssPath="mycss.css"

part2=$(curl ${url}/${cssPath} | grep -E -o "c.*}" | tail -1)

echo ${part1_cut}${part2}