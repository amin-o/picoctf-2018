#!/usr/bin/env python
import requests
import re

req = requests.get('http://2018shell.picoctf.com:21579/button2.php')

print(re.search('picoCTF{.*}',req.text)[0])