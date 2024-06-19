#!/bin/bash

#echo "Criando arquivos de log"
for n in {5051..5054};do touch $n.log done
echo "220 ProFTPD 1.3.4a Server (FTP) [Ubuntu]" > banner.txt

echo "Subindo porta"
nc -lvp 5051 < banner.txt 1>> 5051.log 2>> 5051.log; echo $(date) >> 5051.log
#nc -lvp 5052 < banner.txt 1>> 5052.log 2>> 5052.log; echo $(date) >> 5052.log
#nc -lvp 5053 < banner.txt 1>> 5053.log 2>> 5053.log; echo $(date) >> 5053.log
#nc -lvp 5054 < banner.txt 1>> 5054.log 2>> 5054.log; echo $(date) >> 5054.log
