#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/216c0a3d1c6517055035a3a95b78d9fe/ext-super-magic.img"
file="ext-super-magic.img"

#after downloading the image file we see by running file that the file is just "data"
#using e2fsck we can see that its ext2
#using a hex editor we can fix the corrupted ext2 file
#ext2/ext3/ext4 filesystem always has the bytes 0x53 0xEF at positions 1080–1081.
#After you search for the byte location you should see 00 00 edit them to this : 53 EF and save the file.
#mount it and open flag.jpg

if ! test -f $file ; then

    wget --no-check-certificate $url

fi

read -n 1 -s -r -p "Press any key to reveal the flag..."
printf '\n'
echo "picoCTF{a7DB29eCf7dB9960f0A19Fdde9d00Af0}"
