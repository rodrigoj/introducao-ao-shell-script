#!/bin/bash
# testa-arquivos.sh - Pede ao usuário para digitar um arquivo e testa se este arquivo existe. Se sim, diz se é um arquivo ou um diretório.
# Autor: Rodrigo Moreira

echo -n "Digite o arquivo: "
read ARQUIVO

if [ -f "$ARQUIVO" ]; then 
    echo "$ARQUIVO é um arquivo"
else
    if [ -d "$ARQUIVO" ]; then
	echo "$ARQUIVO é um diretório"
    else
	echo "O arquivo '$ARQUIVO' não foi encontrado"
    fi
fi
