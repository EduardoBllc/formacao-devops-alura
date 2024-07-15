#! /bin/bash

if [ "$#" -lt 1 ]; then
	echo "Informe um arquivo para checar sua existência"
	exit 1
fi

if [ -e "$1" ]; then
	echo "O arquivo '$1' existe no diretório atual"
else
	echo "O arquivo '$1' NÃO existe no diretório atual"
fi

exit 0
