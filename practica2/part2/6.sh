#!/bin/bash
#
# Leer el nombre de un usuario, indicar el numero de sesiones que tiene abiertas. Si es solo 1 mostrar sus procesos, si tiene mas de 1 mostrar informacion detallada de sus sesiones.
# Si no tiene ninguna sesion abierta mostrar su directorio HOME. UTILIZANDO CASE.

printf "Por favor ingrese el nombre de un usuario del sistema.\n";
read USER;

IS=$(cat /etc/passwd | grep -c $USER);
if [ $IS -eq 0 ]; then
    printf "No existe el usuario especificado. Terminando el programa...\n";
    exit 1;
else
    NSESSIONS=$(users | grep -c $USER);
    case $NSESSIONS in
	0) printf "El usuario ${USER} no está conectado actualmente. Su directorio HOME es:\n";
	   echo ~$USER;;
	1) printf "El usuario ${USER} tiene una sesion abierta. Los procesos iniciados por este usuario son:\n";
	   echo -e "$(ps r -u $USER)";;
	*) printf "El usuario ${USER} tiene mas de una sesion abierta. La información de sus sesiones:";
	   echo $(w -h $USER);;
    esac
fi
