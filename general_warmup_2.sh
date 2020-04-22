#!/usr/bin/bash

decimal_input="27"

bc <<< "obase=2;${decimal_input}"