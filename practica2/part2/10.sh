#!/bin/bash
#
# Script que permite obtener distintos tipos de información de la fecha actual utilizando date. Puede recibir 0 o 1 argumentos. Si recibe un argumento debe mostrar la informacion solicitada:
# a | A año, m | M Mes, d | D dia, h | H hora. Si no recibe ningun argumento debe mostrar toda la información.

DAY=$(date +%A);
MONTH=$(date +%B);
YEAR=$(date +%Y);
HOUR=$(date +%H:%M);

if [ $# -eq 0 ]; then
    printf "Son las ${HOUR} del día ${DAY} del mes de ${MONTH} de ${YEAR}\n";
    exit 0;
elif [ $# -eq 1 ]; then
    if [[ $1 = [dD] ]]; then
	printf "Hoy es ${DAY}\n";
	exit 0;
    elif [[ $1 = [mM] ]]; then
	printf "Estamos en el mes de ${MONTH}\n";
	exit 0;
    elif [[ $1 = [yY] ]]; then
	printf "Estamos en el año ${YEAR}\n";
	exit 0;
    elif [[ $1 = [hH] ]]; then
	printf "Son las ${HOUR}\n";
	exit 0;
    else
	printf "Uso incorrecto. ./10.sh <d | D | m | M | y | Y | h | H>\n";
	exit 1;
    fi
else
    printf "Uso incorrecto. El programa solo puede tener 0 o 1 argumento.\n";
    exit 1;
fi

	
