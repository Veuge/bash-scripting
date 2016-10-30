#!/bin/bash

# Crear un script que muestre el numero de ficheros que tienen permiso de lectura, escritura y
# ejecucion para el grupo.

DIR=/home/veuge/
NUMBER=`find $DIR -maxdepth 1 -type f -perm -g+rwx | wc -l`
echo Numero de ficheros con todos los permisos para el grupo en $DIR: $NUMBER
