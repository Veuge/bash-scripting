#!/bin/bash
#
# Script que recibe un argumento, verificar si el argumento es un usuario del sistema, si es usuario, si esta conectado actualmente.

if [ $# -eq 1 ]; then
    RES=$(grep $1 /etc/passwd | wc -l)
    if [ $RES -lt 1 ]; then
	printf "No existe nungun usuario con ese nombre\n";
	exit 66;
    else
	printf "Existe un usuario con el nombre $1, su directorio home es:\n";
	eval echo ~$1;
	CONNECTED=$(who | grep $1 | wc -l);
	if [ $CONNECTED -ge 1 ]; then
	    printf "El usuario $1 esta actualmente conectado\n";
	    exit 0;
	else
	    printf "El usuario $1 no esta actualmente conectado\n";
	    exit 6;
	fi
    fi
else
    printf "Por favor ingrese el nombre de un usuario como argumento...\n";
    exit 1;
fi

	    
