#!/bin/bash
#
# Leer una cadena de caracteres y mostrar todos los usuarios conectados cuyo username contenga la cadena.

printf "Inserte una cadena de caracteres.\n";
read STR;

if [[ "$STR" =~ ^[0-9a-zA-Z] ]]; then
    NCON=$(users | grep -c $STR);
    if [ $NCON -eq 0 ]; then
	printf "No existen usuarios conectados que coincidan con la cadena insertada\n";
	exit 1;
    else
	printf "Los usuarios conectados al sistema con $STR en su username son:\n";
	CONNECTED=$(users | grep $STR);
	echo -e "$CONNECTED";
	exit 0;
    fi
else
    printf "Input incorrecto. Terminando el programa...\n";
    exit 1;
fi

    
