#!/bin/bash
# sistema.sh - Script que mostra informações sobre o sistema.
# Autor: Rodrigo Moreira

# Pede uma confirmação do usuário antes de executar.
echo -n "Vou buscar os dados do sistema. Posso continuar? [S/n] "
read RESPOSTA

# Se ele digitou 'n', vamos interromper o script.
test "$RESPOSTA" = "n" && exit

# O date mostra a data e a hora correntes.
echo
echo "Data e Horário:"
date 
echo

# O df -h mostra as partições e quanto cada uma ocupa no disco no formato legível para humanos.
echo "Uso do disco:"
df -h
echo

# O w mostra os usuários que estão conectados nesta máquina.
echo "Usuários conectados:"
w
echo
