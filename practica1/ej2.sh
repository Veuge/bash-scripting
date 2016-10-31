#!/bin/bash

# Crear un script que muestre el nombre de usuario, numero de usuarios conectados al sistema, fecha y hora actual.

ACTUAL=`whoami`
CONNECTED=`users | wc -l`
DATETIME=`date +"%A %d %b %Y, %T"`

printf "%-23s %-22s\n" "Usuario actual:" "${ACTUAL}"
printf "%-23s %-22s\n" "Usuarios conectados:" "${CONNECTED}"
printf "%-23s %-22s\n" "Fecha y hora:" "${DATETIME}"
exit 0
