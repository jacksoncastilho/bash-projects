#!/bin/bash

for ip in {1..10};do echo 192.168.0.$ip;done

for port in $(seq 80 100);
do
    echo $1:$port;
done
