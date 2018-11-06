#!/bin/bash
# users.sh - Do arquivo /etc/passwd, mostra todos os shells (último campo) que os usuários usam. Não mostrar linhas repetidas.
# Autor: Rodrigo Moreira

cat /etc/passwd | cut -d ":" -f7 | sort | uniq
