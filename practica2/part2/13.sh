#!/bin/bash
#
# Script que recibe como parametro el nombre de un directorio y genera un archivo ejecutables con la lista de sus archivos ejecutables.

if [ $# -eq 1 ]; then
    if [ -d $1 ]; then
	printf "Directorio $1 encontrado. Buscando archivos ejecutables...\n";
	LIST=$(find ./$1 -maxdepth 1 -type f -executable > ./$1/ejecutables);
	printf "La lista de archivos ejecutable se ha guardado en el archivo 'ejecutables'\n";
	exit 0;
    else
	printf "No existe el directorio $1.\n";
	exit 1;
    fi
else
    printf "Uso incorrecto. ./13.sh <nombre_directorio>\n";
    exit 1;
fi
