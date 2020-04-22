#!/usr/bin/bash

url="https://2018shell.picoctf.com/static/ed5cc27f269a3a4653f0a65b2e8a2d46/run"

if test -f "run" ; then

    ./run
    exit 1

fi

wget $url --no-check-certificate

chmod +x run

./run

rm run