#!/bin/bash
#
# Script que recibe un solo argumento e indica si un directorio es valido, en ese caso si dentro existe algun subdirectorio que no sea el mismo y el directorio padre.

if [ $# -ne 1 ]; then
    printf "Uso incorrecto. ./12.sh <nombre_directorio>\n";
    exit 1;
else
    if [ -d $1 ]; then
	printf "Directorio ${1} encontrado. Buscando subdirectorios...\n";
	NSUBDIR=$(find . -maxdepth 1 -type d | wc -l);
	if [ $NSUBDIR -ne 0 ]; then
	    $(cd $1);
	    SUBDIR=$(find ./$1/ -maxdepth 1 -type d | egrep "./");
	    printf "${SUBDIR}\n";
	    exit 0;
	else
	    printf "El directorio ${1} no tiene subdirectorios.\n";
	    exit 1;
	fi
    else
	printf "No existe el directorio ${1}\n";
	exit 1;
    fi
fi
