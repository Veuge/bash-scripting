#!/bin/bash
#
# Script que muestra el contenido de un directorio si contiene al menos la cantidad de ficheros/directorios especificada como argumento.

NUMBER=$(ls -l $1 | grep -c "^[-,d]");
QTY=$2
if [ $NUMBER -gt $QTY ]; then
    printf "El directorio $1 tiene mas de $QTY ficheros/directorios. Listando...\n";
    echo -e "$(ls -l $1)";
    exit 0;
else
    printf "El directorio $1 tiene menos de $QTY ficheros/directorios.\n";
    exit 1;
fi
