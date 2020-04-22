#!/usr/bin/bash

part1="cvpbPGS"
part2="guvf_vf_pelcgb!"

part1=$(echo $part1 | rot13 )
part2=$(echo $part2 | rot13 )

echo $part1"{$part2}"
