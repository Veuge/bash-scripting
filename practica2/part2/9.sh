#!/bin/bash
#
# Script que recibe tres argumentos: 1 nombre del fichero, 2 nombre del archivo donde se encuentra ??, 3 cadena TODO muestra contenido todo a la vez o PASO por pantallas.
# Usando CASE.

if [ $# -ne 3 ]; then
    printf "Para utilizar: ./8.sh <nombre_archivo> <archivo_que_lo_contiene> <TODO | PASO>\n";
    exit 1;
else
    if [[ -e $1 ]]; then
	case "$3" in
	    "TODO" | "todo") printf "==> A continuacion se muestra el contenido del fichero ${1} de una vez.\n";
			     FILE=$(cat $1);
			     echo -e "$FILE";
			     exit 0;;
	    "PASO" | "paso") printf "==> A continuación se muestra el contenido del fichero ${1} por pantallas.\n";
			     echo -e "$(cat $1 | less)";;
	    # can't show by screens ¬¬
	    *) printf "El tercer argumento es incorrecto, inserte TODO, todo, PASO o paso.\n";
	       exit 1;;
	esac
    else
	printf "El archivo ${1} no existe en este directorio.\n";
	exit 1;
    fi
fi


