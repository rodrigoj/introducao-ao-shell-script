#!/bin/bash
# juntatudo.sh - Mostra na tela "grudados" todos os parâmetros recebidos na linha de comando, como uma única palavra.
# Autor: Rodrigo Moreira

echo "$*" | tr -d " "
