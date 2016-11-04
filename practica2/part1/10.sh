#!/bin/bash
#
# Script que recibe un solo argumento que es un directorio dentro del actual. Si lo es mostrar el numero de ficheros, si no solicitar la ruta completa.

if [ $# -ne 1 ]; then
    printf "Para utilizar: ./10.sh [nombre_del_directorio]\n";
    exit 1;
else
    DIR=$1;
    i=0;
    SEARCH=$(ls -1 . | grep -cw $DIR);
    while [ $SEARCH -lt 1 ] && [ $i -lt 2 ]; do
	printf "No se encontro el directorio buscado, inserte la ruta completa...\n";
	read DIR;
	SEARCH=$(ls -l $DIR | wc -l 2>/dev/null);
	i=$((i + 1));
    done
    if [ $SEARCH -ge 1 ]; then
	printf "Directorio $DIR encontrado.\n"
	NFILES=$(ls -l $DIR | grep -c "^-");
	printf "%-20s %-20s\n" "Cantidad de ficheros:" "${NFILES}";
    fi
fi


  
