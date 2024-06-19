#!/bin/bash

portsToEnable="13 37 30000 3000 1337"
portsToDisable="2424 2525"

select choice in enable disable; do
    for port in $([[ "$choice" == "enable" ]] && echo $portsToEnable || echo $portsToDisable); do
        echo $'\nPort:' $port
        hping3 -S $1 -p $port -c 1 
    done
    break
done


