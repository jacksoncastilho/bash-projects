#!/bin/bash

if [ "$1" == "" ]
then
    echo $'How to use:\n./socket.sh 192.168.0.1 80'
else
    echo "Socket $1:$2"
fi
