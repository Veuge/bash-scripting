#!/bin/bash
#
# Script que recibe datos alfanumericos como argumentos y realiza todas las operaciones de cadenas con expr.

function validate() {
    if [[ $1 =~ ^[a-zA-Z0-9]+$ ]] && [[ $2 =~ ^[a-zA-Z0-9]+$ ]]; then
	return 0;
    else
	return 1;
    fi
}

STR1=$1;
STR2=$2;
validate $STR1 $STR2;

while [ $? -eq 1 ]; do
    printf "Por favor inserte dos cadenas alfanumericas.\n";
    read STR1;
    read STR2;
    validate $STR1 $STR2;
done

printf "Realizando las operaciones básicas de cadenas...\n";
LEN=$(expr length $STR1);
printf "%-30s %-30s\n" "Longitud de ${STR1}:" "${LEN}";
INDEX=$(expr index $STR1 $STR2);
printf "%-30s %-30s\n" "Posición de ${STR2} en ${STR1}:" "${INDEX}";
SUBS=$(expr substr $STR1 2 4);
printf "%-30s %-30s\n" "Subcadena de ${STR1} de 2 a 4:" "${SUBS}";
exit 0;
