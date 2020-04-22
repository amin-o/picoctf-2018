#!/usr/bin/bash

message="llkjmlmpadkkc"
key="thisisalilkey"

i=0

decrypt_message=""

while [ $i -lt ${#message} ] ; do
    
    #get ascii chars
    message_char=${message:$i:1}
    key_char=${key:$i:1}
    
    #convert ascii chars into 
    message_char_int=$(printf "%d " "'$message_char")
    key_char_int=$(printf "%d " "'$key_char")

    #decrypt single char
    decrypt_int=$(( (($message_char_int - $key_char_int + 26) % 26) + 65 ))
    decrypt_char=$(printf "\x$(printf %x $decrypt_int)")

    #append to the decrypt message
    decrypt_message=${decrypt_message}$decrypt_char

    i=$(( $i + 1 ))

done

echo "picoCTF{$decrypt_message}"
