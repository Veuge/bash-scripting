#!/bin/bash
#
# Script que muestra el contenido de un directorio si contiene al menos la cantidad de ficehros/directorios especificada por el usuario.

NUMBER=$(ls -l $1 | grep -c "^[-,d]");
printf "Inserte la cantidad mínima de ficheros/directorios que debe tener el directorio $1:\n";
read QTY;
if [ $NUMBER -ge $QTY ]; then
    printf "El directorio $1 tiene mas de $QTY ficheros/directorios. Listando...\n";
    echo -e "$(ls -l $1)";
    exit 0;
else
    printf "El directorio $1 tiene menos de $QTY ficheros/directorios.\n";
    exit 1;
fi
