#!/bin/bash
# expressoes-aritmeticas.sh - O shell também sabe fazer contas.
# Autor: Rodrigo Moreira

echo "2 * 3 = $(( 2 * 3))"
echo "( 2 * 3 - 2 / 2 + 3) = $(( 2 * 3 - 2 / 2 + 3))"
NUM=44
echo "$NUM * 2 = $(( NUM * 2 ))"
NUM=$(( NUM + 1 ))
echo "44 + 1 = $NUM"
