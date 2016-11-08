#!/bin/bash
#
# Script para realizar calculos matematicos solicitando los operadores y la operacion.

printf "Inserte el primer operador: ";
read NUM1;

printf "Inserte el segundo operador: ";
read NUM2;

printf "Inserte la operación (+, -, *, /, %%): ";
read OPE;

case $OPE in
    "+") echo "$NUM1 + $NUM2 = $((NUM1+NUM2))";
	 exit 0;;
    "-") echo "$NUM1 - $NUM2 = $((NUM1-NUM2))";
	 exit 0;;
    "*") echo "$NUM1 * $NUM2 = $((NUM1*NUM2))";
	 exit 0;;
    "/") echo "$NUM1 / $NUM2 = $((NUM1/NUM2))";
	 exit 0;;
    "%") echo "$NUM1 % $NUM2 = $((NUM1%NUM2))";
	  exit 0;;
    *) echo "Operador incorrecto."
       exit 1;;
esac
