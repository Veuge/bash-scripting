#!/bin/bash
#
# Crear un guión que solicite al usuario un nombre de directorio y una cadena no vacía de caracteres (se supone que los datos proporcionados por el usuario no serán erroneos). El guión debe mostrar, solamente, los atributos de protección y el nombre de los archivos que hay en ese directorio y que contienen en su nombre la cadena dada por el usuario.
#
# Con variables

ARGC=$#
DIR=$1
STR=$2

if [ $ARGC -ne 2 ]; then
    echo "Incorrecto!, para usar el script ./ej10.sh [nombre_directorio] [cadena]";
    exit 1;
else
    # Existe un directorio con el nombre proporcionado por el usuario
    if [[ -d $DIR ]]; then
	echo Directorio con nombre $DIR encontrado. Buscando ficheros...
	NUMBER=$(ls -1  $DIR/*$STR* 2> /dev/null | wc -l);
	echo "Numero de ficheros que contienen en su nombre $STR: ${NUMBER}"
	if [ $NUMBER -eq 0 ]; then
	    echo No se encontraron ficheros que contengan $STR en su nombre;
	    exit 1;
	else
	    echo Ficheros en el directorio $DIR con nombre que contiene la secuencia $STR:
	    echo -e "$(ls -l $DIR/*$STR* | cut -d" " -f1,9)"
	    exit 0;
	fi
    else
        echo No existe ningun directorio con el nombre $DIR;
	exit 1;
    fi
fi
