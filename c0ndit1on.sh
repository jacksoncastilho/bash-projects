#!/bin/bash

echo "Qual a cor do semafaro?"
read cor

if [ "$cor" == "verde" ]
then
    echo "Siga!"
elif [ "$cor" == "amarelo" ]
then
    echo "Agurde!"
else
    echo "Pare!"
fi
