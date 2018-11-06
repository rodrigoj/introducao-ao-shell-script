#!/bin/bash
# script.sh - Script para fixar alguns dos conceitos vistos no script sistema.sh.
# Autor: Rodrigo Moreira

# As variáveis são a base de qualquer script.
VARIAVEL="um dois tres"
echo $VARIAVEL
echo $VARIAVEL $VARIAVEL
echo

# Ainda é possível armazenar a saída de um comando dentro de uma variável.
HOJE=$(date)
echo "Hoje é: $HOJE"
unset HOJE
echo $HOJE

# O comando "cat -n sistema" mostra o nosso script, com as linhas numeradas.
cat -n sistema.sh
echo

# O comando "rev" inverte texto.
echo "a b c d e f" | rev
echo

# Em shell é possível combinar comandos, aplicando-os em seqüência, para formar um comando completo.
cat /etc/passwd | grep root | cut -c1-10
echo

# É possível redirecionar a saída de um comando para um arquivo ao invés da tela, usando o operador ">".
cat /etc/passwd | grep "root" | cut -c1-10 > saida

# Diferente de outras linguagens, o if testa um comando e não uma condição.
VARIAVEL=12
if [ "$VARIAVEL" -gt 10 ]; then
    echo "$VARIAVEL é maior que 10"
else
    echo "$VARIAVEL é menor que 10"
fi
echo

# O for percorre uma lista de palavras, pegando uma por vez.
for numero in um dois tres
do
    echo "Contando: $numero"
done
echo

# E temos ainda o loop infinito, com condicional de saída usando o "break".
while :
do
    if test -f "/tmp/lock"
    then
	echo "Aguardando liberacao do lock..."
	sleep 1
    else
	break
    fi
done
echo
 
# O while é um laço que é executado enquanto um comando retorna OK.
while test -f "/tmp/lock"
do
    echo "Script travado..."
    sleep 1
done
echo

# Uma ferramenta muito útil para usar com o for é o seq.
for passo in $(seq 10)
do
    echo "passo $passo"
done
echo

# O mesmo pode ser feito com o while, usando um contador.
i=0
while test $i -le 10
do
    i=$((i + 1))
    echo "Contando: $i"
done
echo
