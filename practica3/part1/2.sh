#!/bin/bash
#
# Script para realizar calculos matematicos solicitando los operadores y la operacion. Realizar la operacion hasta que el primer operando sea negativo.

NUM1=0;
NUM2=0;

while [ $NUM1 -ge 0 ]; do
    printf "Inserte el primer operador: ";
    read NUM1;

    printf "Inserte el segundo operador: ";
    read NUM2;

    printf "Inserte la operación (+, -, *, /, %%): ";
    read OPE;

    case $OPE in
	"+") echo "$NUM1 + $NUM2 = $((NUM1+NUM2))";;

	"-") echo "$NUM1 - $NUM2 = $((NUM1-NUM2))";;

	"*") echo "$NUM1 * $NUM2 = $((NUM1*NUM2))";;

	"/") echo "$NUM1 / $NUM2 = $((NUM1/NUM2))";;

	"%") echo "$NUM1 % $NUM2 = $((NUM1%NUM2))";;

	*)   echo "Operador incorrecto.";;

    esac
done

