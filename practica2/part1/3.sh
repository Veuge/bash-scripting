#!/bin/bash
#
# Script que muestra por pantalla sus dos primeros argumentos y el nombre del propio script.

printf "PRIMERA PARTE\n";
printf "%-20s %-20s\n" "Nombre del script:" "${0}";
printf "%-20s %-20s\n" "Argumento 1:" "${1}";
printf "%-20s %-20s\n" "Argumento 2:" "${2}";

printf "SEGUNDA PARTE\n";
printf "%-20s %-20s\n" "Numero de argumentos:" "${#}";
i=0
while [ $i -le $# ]; do
    printf "ARGV[$i] = ${!i}\n";
    i=$((i+1));
done

#con shift
printf "TERCERA PARTE\n";
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
