#!/bin/bash
#
# Comprobar que el numero de argumentos sea 2.

if [ $# -eq 2 ]; then
    printf "CORRECTO! El numero de argumentos es igual a 2.\n";
    exit 0;
else
    printf "INCORRECTO! El numero de argumentos debe ser igual a 2\n";
    exit 1;
fi
