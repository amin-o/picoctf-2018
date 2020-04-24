#!/usr/bin/bash

url="2018shell4.picoctf.com"

echo "Username:" ; read username

encryptedFlag=$(ssh $username@$url 'cd /problems/caesar-cipher-1_0_931ac10f43e4d2ee03d76f6914a07507 && cat ciphertext')

encryptedFlag=${encryptedFlag:8}
encryptedFlag=${encryptedFlag%?}
 
i=1

while [ $i -le 29 ] ; do

    echo $encryptedFlag | caesar $i
    i=$((i + 1))
    
done

#look through the text
printf "\n" ; echo "picoCTF{justagoodoldcaesarcipherobyujeez}"

