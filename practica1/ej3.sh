#!/bin/bash

# Modificar el anterior script añadiendo una linea despues del comando exit

ACTUAL=`whoami`
CONNECTED=`users | wc -l`
DATETIME=`date +"%A %d %b %Y, %T"`

printf "%-23s %-22s\n" "Usuario actual:" "${ACTUAL}"
printf "%-23s %-22s\n" "Usuarios conectados:" "${CONNECTED}"
printf "%-23s %-22s\n" "Fecha y hora:" "${DATETIME}"
exit 0

echo "Extra line"
