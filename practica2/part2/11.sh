#!/bin/bash
#
# Script que permite obtener distintos tipos de información de la fecha actual utilizando date. Puede recibir 0 o 1 argumentos. Si recibe un argumento debe mostrar la informacion solicitada:
# a | A año, m | M Mes, d | D dia, h | H hora. Si no recibe ningun argumento debe mostrar toda la información.
# Usando CASE

DAY=$(date +%A);
MONTH=$(date +%B);
YEAR=$(date +%Y);
HOUR=$(date +%H:%M);

if [ $# -eq 0 ]; then
    printf "Son las ${HOUR} del día ${DAY} del mes de ${MONTH} de ${YEAR}\n";
    exit 0;
elif [ $# -eq 1 ]; then
    case $1 in
	"d" | "D") printf "Hoy es ${DAY}\n";
		   exit 0;;
	"m" | "M") printf "Estamos en el mes de ${MONTH}\n";
		   exit 0;;
	"y" | "Y") printf "Estamos en el año ${YEAR}\n";
		   exit 0;;
	"h" | "H") printf "Son las ${HOUR}\n";
		   exit 0;;
	*) printf "Uso incorrecto. ./10.sh <d | D | m | M | y | Y | h | H>\n";
	   exit 1;;
    esac
else
    printf "Uso incorrecto. El programa solo puede tener 0 o 1 argumento.\n";
    exit 1;
fi
