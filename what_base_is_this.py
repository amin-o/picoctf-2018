#!/usr/bin/env python
import pwn
import re

def converter(arr, base):

    temp = '' 

    for x in arr:

        temp += chr(int(x,base))

    return temp

host = '2018shell.picoctf.com'
port = '31711'

session = pwn.remote(host, port)

#binary --- 
data = session.recv().decode('utf-8') + '\n'

binary = re.search('((0|1)(.*)(0|1))',data)[0]
binary = binary.split(' ')

session.sendline(converter(binary, 2))

#hex ---
data = session.recv().decode('utf-8') + '\n'

hex_data = re.search('[0-9A-F].*[0-9A-F]',data)[0]
session.sendline(bytearray.fromhex(hex_data))

#oct ---
data = session.recv().decode('utf-8') + '\n'

oct_data = re.search('[0-7].*[0-7]', data)[0].split(' ')
session.sendline(converter(oct_data, 8))

#get flag

flag = session.recv().decode('utf-8')
flag = re.search('picoCTF{.*}',flag)[0]
print(flag)