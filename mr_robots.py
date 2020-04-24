#!/usr/bin/env python

import requests
import re

url = 'http://2018shell.picoctf.com:29568'

folder = "/robots.txt"

req = requests.get(url + folder)

nextFolder = re.search(r'/.+', req.text)[0]

req = requests.get(url + nextFolder)

print(re.search(r'picoCTF{.+}', req.text)[0])