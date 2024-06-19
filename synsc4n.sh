#!/bin/bash

for ip in $(cat $1); do
    hping3 -S $ip -p 1337 -c 1 2>/dev/null | grep -i "flags=sa" &>/dev/null 
    [[ $? -eq 0 ]] && echo "$ip ---> VULNERABLE" || echo "$ip ---> No vulnerable"
done
