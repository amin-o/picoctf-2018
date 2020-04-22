#!/usr/bin/bash

hex_input="0x41"

ascii_output=$(echo ${hex_input} | xxd -p -r)

echo "picoCTF{$ascii_output}"
