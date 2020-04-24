#!/usr/bin/bash

base64_input="dGg0dF93NHNfczFtcEwz"

flag=$(echo $base64_input | base64 -d)

echo "picoCTF{$flag}"