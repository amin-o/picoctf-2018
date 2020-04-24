#!/usr/bin/bash

url="2018shell.picoctf.com"
port="44310"

nc ${url} ${port} | grep -E -o "picoCTF{.*}"
 
