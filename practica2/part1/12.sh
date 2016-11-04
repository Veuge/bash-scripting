#!/bin/bash
#
# Script que muestra el contenido de un directorio si contiene al menos 3 ficheros.

NUMBER=$(ls -l $1 | grep -c "^-");
QTY=3;
if [ $NUMBER -ge $QTY ]; then
    printf "El directorio $1 tiene mas de $QTY ficheros. Listando...\n";
    echo -e "$(ls -l $1 | grep "^-")";
    exit 0;
else
    printf "El directorio $1 tiene menos de $QTY ficheros.\n";
    exit 1;
fi
