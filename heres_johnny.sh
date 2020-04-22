#!/usr/bin/bash

url="2018shell.picoctf.com"
port=38860

passwd="https://2018shell.picoctf.com/static/29633d1bd5ba677d6af455cf61b18f57/passwd"
shadow="https://2018shell.picoctf.com/static/29633d1bd5ba677d6af455cf61b18f57/shadow"

if ! test -f "passwd" ; then

    wget --no-check-certificate $passwd 

elif ! test -f "shadow" ; then

    wget --no-check-certificate $shadow
fi

wordlist_location="/usr/share/wordlists/rockyou.txt"
file="shadow"

john --wordlist=$wordlist_location $file # crack the pass
user_and_pass=$(john --show $file | grep -E -o ".*:1") #extract the data from john pot
user_and_pass=$(echo $user_and_pass | tr : " ") #replace : with " "
user_and_pass=${user_and_pass::-2} #remove last two chars 

i=0
user="temp"
password="temp"

for w in $user_and_pass ; do #store the user and password in separate variables

    if [[ $i -eq 0 ]] ;  then

        user=$w

    elif [[ $i -eq 1 ]] ; then

        password=$w

    fi

    i=$(($i + 1))

done

rm shadow passwd

echo "USERNAME: ${user} PASSWORD: ${password}"
printf "\n"
nc $url $port


 