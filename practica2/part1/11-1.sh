#!/bin/bash
#
# Script que muestra el contenido del directorio actual si hay mas de 2 ficheros o directorios.

NUMBER=$(ls -l $1 | grep -c "^[-,d]");
if [ $NUMBER -ge 2 ]; then
    printf "El directorio $1 tiene mas de 2 ficheros/directorios. Listando...\n";
    echo -e "$(ls -l $1)";
    exit 0;
else
    printf "El directorio $1 tiene menos de 2 ficheros/directorios.\n";
    exit 1;
fi
