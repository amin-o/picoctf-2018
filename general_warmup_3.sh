#!/usr/bin/bash

hex_input="0x3D"

dec_output=$(printf "%d" $hex_input)

echo "picoCTF{$dec_output}"