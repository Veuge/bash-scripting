#!/bin/bash
#
# Alerta al usuario si no ha ingresado ningun argumento

if [ $# -eq 0 ]; then
    printf "Por favor intruduzca 1 o mas argumentos...\n";
    exit 1;
fi

printf "%-30s %-20s\n" "Numero de argumento ingresados:" "${#}"
i=0
while true; do
    if [ $1 ]; then
        printf "ARGV[$i] = $1\n";
        shift
    else
        break
    fi
    i=$((i+1))
done
