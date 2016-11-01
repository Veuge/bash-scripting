#!/bin/bash
#
# Crear un guión que solicite al usuario un nombre de directorio y una cadena no vacía de caracteres (se supone que los datos proporcionados por el usuario no serán erroneos). El guión debe mostrar, solamente, los atributos de protección y el nombre de los archivos que hay en ese directorio y que contienen en su nombre la cadena dada por el usuario.
#

if [ $# -ne 2 ]; then
    printf "Incorrecto!, para usar el script ./ej10.sh [nombre_directorio] [cadena]";
else
    # Existe un directorio con el nombre proporcionado por el usuario?
    if [[ -d $1 ]]; then
	echo Directorio con nombre $1 encontrado. Buscando ficheros...
	FILES=$(ls -l $1/*$2* | cut -d" " -f1,9);
	NUMBER="${FILES}" | wc -l;
	echo "${NUMBER}"
	if [ $NUMBER -eq 0 ]; then
	    echo No se encontraron ficheros que contengan $2 en su nombre;
	else
	    echo Ficheros en el directorio $1 con nombre que contiene la secuencia $2:
	    echo $FILES
	fi
    else
        echo No existe ningun directorio con el nombre $1;
    fi
fi
