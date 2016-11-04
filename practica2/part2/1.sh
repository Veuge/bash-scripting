#!/bin/bash
#
# Script que lee dos variables, y realiza operaciones aritmeticas con expr.

function validate() {
    if [[ "$1" =~ ^[0-9]+$ ]]; then
	return 0;
    else
	return 1;
    fi
}

function feedback() {
    if [ $1 -eq 1 ]; then
	printf "Solo puedes ingresar un numero. Terminando el programa...\n";
	exit 1;
    fi
}

printf "Por favor inserte el primer numero.\n";
read NUM1;
validate $NUM1;
feedback $?;

printf "Por favor inserte el segundo numero.\n";
read NUM2;
validate $NUM2;
feedback $?;

printf "Comenzando las operaciones aritméticas\n";
SUM=$(expr "$NUM1" + "$NUM2");
printf "%-20s %-20s\n" "Suma" "$NUM1 + $NUM2 = ${SUM}";
RES=$(expr "$NUM1" - "$NUM2");
printf "%-20s %-20s\n" "Resta" "$NUM1 - $NUM2 = ${RES}";
MUL=$(expr "$NUM1" \* "$NUM2");
printf "%-20s %-20s\n" "Multiplicacion" "$NUM1 * $NUM2 = ${MUL}";
if [ $NUM2 -eq 0 ]; then
    printf "%-20s %-20s\n" "Division" "No se puede dividir entre 0";
else
    DIV=$(expr $NUM1 / $NUM2);
    printf "%-20s %-20s\n" "Division (cociente)" "$NUM1 / $NUM2 = ${DIV}";
fi
exit 0;
