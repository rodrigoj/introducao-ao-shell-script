#!/bin/bash
# zerador.sh - Recebe um número como parâmetro e o diminui até chegar a zero, mostrando na tela cada passo, em uma mesma linha.
# Autor: Rodrigo Moreira

i=$1
while test $i -ge 0
do
    echo -n "$i "
    i=$((i -1))
done
echo
