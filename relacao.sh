#!/bin/bash
# relacao.sh - Recebe dois números como parâmetro e mostra a relação entre eles.
# Autor: Rodrigo Moreira

if [ $1 -gt $2 ]; then
    echo "$1 é maior que $2"
else
    if [ $1 -lt $2 ]; then
	echo "$1 é menor que $2"
    else
	if [ $1 -eq $2 ]; then
	    echo "$1 é igual a $2"
	fi
    fi
fi
