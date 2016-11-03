#!/bin/bash
#
# Recibir como argumento el nombre de un directorio valido, listar los archivos que contiene y convertirlos en argumentos del script. Mostrarlos con $* y $@, indicar el numero de argumentos
#

DIR=$1;
printf "Lista de ficheros del irectorio $1\n";
echo -e "$(ls -l $DIR | grep "^-")";
LIST=$(ls -1 $1);
: ${@:=LIST};

echo $*;
echo $@;
echo $#;
