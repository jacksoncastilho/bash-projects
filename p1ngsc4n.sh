#!/bin/bash

file="$1.txt"

[[ -f $file ]] && rm -f $file

for i in {1..254}; do
    ping -c 1 -W 1 $"$1.$i" | grep -i "64 bytes" | cut -d " " -f 4 | sed "s/://" | tee -a $file 
done

