#!/bin/bash
# parametros.sh - Mostra na tela todos os parâmetros recebidos na linha de comando, contando-os.
# Autor: Rodrigo Moreira

i=0
while test "$1"
do
    i=$((i+1))
    echo "Parâmetro $i: $1"
    shift
done
