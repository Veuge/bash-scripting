#!/bin/bash
#
# Script para realizar calculos matematicos solicitando los operadores y la operacion como argumentos.

NUM1=$1;
NUM2=$2;
OPE=$3;

if [[ $NUM1 =~ [0-9] && $NUM2 =~ [0-9] ]]; then
    case $OPE in
	"+") echo "$NUM1 + $NUM2 = $((NUM1+NUM2))";;
	"-") echo "$NUM1 - $NUM2 = $((NUM1-NUM2))";;
	"*") echo "$NUM1 * $NUM2 = $((NUM1*NUM2))";;
	"/") echo "$NUM1 / $NUM2 = $((NUM1/NUM2))";;
	"%") echo "$NUM1 % $NUM2 = $((NUM1%NUM2))";;
	*)   echo "Operador incorrecto.";;
    esac
else
    printf "Argumentos incorrectos. ./${0} <operador> <operador> <operacion>. Si la operacion es multiplicación \* para argumento.\n";
    exit 1;
fi
