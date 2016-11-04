#!/bin/bash
#
# Script que lee datos alfanumericos y realiza todas las operaciones de cadenas con expr.

function validate() {
    if [[ $1 =~ ^[a-zA-Z0-9]+$ ]] && [[ $2 =~ ^[a-zA-Z0-9]+$ ]]; then
	return 0;
    else
	return 1;
    fi
}

printf "Inserte las dos cadenas de caracteres\n";
read STR1;
read STR2;

if [ $? -eq 1 ]; then
    printf "Los datos proporcionados no son correctos. Terminando el programa...\n";
    exit 1;
else
    printf "Realizando las operaciones básicas de cadenas...\n";
    LEN=$(expr length $STR1);
    printf "%-30s %-30s\n" "Longitud de ${STR1}:" "${LEN}";
    INDEX=$(expr index $STR1 $STR2);
    printf "%-30s %-30s\n" "Posición de ${STR2} en ${STR1}:" "${INDEX}";
    SUBS=$(expr substr $STR1 2 4);
    printf "%-30s %-30s\n" "Subcadena de ${STR1} de 2 a 4:" "${SUBS}";
    exit 0;
fi
