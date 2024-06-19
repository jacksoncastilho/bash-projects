#!/bin/bash

if [ "$1" == "" ]
then
    echo "How to use:"
    echo $0 www.site.com.br
    exit 1
fi

wget -q $1 

cat index.html | grep href | cut -d "/" -f 3 | cut -d '"' -f 1 | egrep -v ">|<" > hosts.txt

rm index.html

for varHost in $(cat ./hosts.txt);
do
    host $varHost | grep "address"
done
