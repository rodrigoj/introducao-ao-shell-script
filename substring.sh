#!/bin/bash
# substring.sh - Recebe duas palavras como parâmetro e verifica se a primeira palavra está contida dentro da segunda.
# Autor: Rodrigo Moreira

test $# -ne 2 && exit
echo $2 | grep -qs $1 && echo "$1 está contida em $2"
