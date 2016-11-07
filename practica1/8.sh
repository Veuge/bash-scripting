#!/bin/bash
#
# Mostrar la fecha de creacion del directorio $HOME, la cantidad de ficheros que contiene y la cantidad de subdirectorios

DATES=$(stat -c '%w' $HOME)
FILES=$(find $HOME -maxdepth 1 -type f | wc -l)
SUBDIRS=$(find $HOME -maxdepth 1 -type d | wc -l)

printf "%-30s %-20s\n" "Fechas de creación:" "${DATES}"
printf "%-30s %-20s\n" "Cantidad de ficheros:" "${FILES}"
printf "%-30s %-20s\n" "Cantidad de subdirectorios:" "${SUBDIRS}"

exit 0
