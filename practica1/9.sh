#!/bin/bash
#
# Mostrar contenido de variables de entorno con set, añadir dir=ls -l, comprobar si existe variable dir en las variables de entorno con set, crear nueva sesion de shell y comprobar si existe la variable dir, añadir export dir y comprobar si es variable de entorno, utilizar unset dir

DIR=$(ls -l)
export DIR
unset DIR

echo $(set | grep DIR)
exit 0

