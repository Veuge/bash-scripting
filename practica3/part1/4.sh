#!/bin/bash
#
# Script para realizar calculos matematicos solicitando los operadores y la operacion como argumentos. En caso que no se provean 3 argumentos volver a pedir al usuario.

if [ $# -eq 3 ]; then
    NUM1=$1;
    NUM2=$2;
    OPE=$3;

    if [[ $NUM1 =~ [0-9] && $NUM2 =~ [0-9] && $NUM1 -le 100 && $NUM2 -le 100 ]]; then
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
else
    printf "Numero de argumentos incorrectos. Se necesitan 3. Vuelva a intentarlo.\n";
    read N1 N2 N3;
    ./$0 $N1 $N2 $N3
fi

