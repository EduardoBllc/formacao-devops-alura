#! /bin/bash

if pgrep nginx &> /dev/null
then
    echo "Nginx está operando $( date +"%d/%m/%Y %H:%M:%S")"
else
    echo "Nginx fora de operacao $( date +"%d/%m/%Y %H:%M:%S")"
fi
