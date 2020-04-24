#!/usr/bin/bash

host='2018shell4.picoctf.com'
echo "user:" ; read user

dir='/problems/you-can-t-see-me_2_cfb71908d8368e3062423b45959784aa'

data=$(ssh $user@$host "cd ${dir} ; cat .*")
echo $data | grep -o -E "picoCTF{.*}"
