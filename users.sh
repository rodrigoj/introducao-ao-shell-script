#!/bin/bash
# users.sh - Do arquivo /etc/passwd, mostra o usuário e o nome completo de cada usuário do sistema (campos 1 e 5) separados por um TAB.
# Autor: Rodrigo Moreira

cat /etc/passwd | cut -d ":" -f1,5 | tr ":" "\t"
