#!/bin/bash
#
# Script que recibe al menos dos argumentos. El nombre del directorio y el nombre de ficheros. El script debe crear un archivo llamado todo.txt con el contenido de todos los archivos especificados.

if [ $# -lt 2 ]; then
    printf "Uso incorrecto. ./14.sh <nombre_directorio> <fichero1> <fichero2>...<ficheron>\n";
    exit 1;
else
    if [ -d $1 ]; then
	printf "Directorio ${1} encontrado. Buscando los archivos especificados...\n";
	$(touch ./$1/todo.txt);
	for arg in "$@"; do
	    if [ "$arg" != "$1" ]; then
		echo "$arg";
		if [ -f ./$1/$arg ]; then
		    printf "Copiando el contenido de ${arg} a todo.txt\n";
		    $(cat ./$1/$arg >> ./$1/todo.txt);
		else
		    printf "No se encontró el fichero ${arg}\n";
		fi
	    fi
	done
		   
    else
	printf "No existe el directorio ${1}\n";
	exit 1;
    fi
fi

    
