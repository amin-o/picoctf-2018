#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/f518f4ed24443251697079e17a17e93a/nowYouDont.png"

file="nowYouDont.png"

#one way to do it:
#open the image with gimp
#select the bucket tool
#select white for example
#set the threshold to 0.0
#click on the corner of the image.
#the flag should be visible now

if ! test -f $file ; then

    wget $url --no-check-certificate

fi

echo "picoCTF{n0w_y0u_533_m3}"
