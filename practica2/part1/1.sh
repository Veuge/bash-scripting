#!/bin/bash
#
# Script que comprueba si una variable ha sido creada.

if [ -z ${var+x} ]; then
    echo "var no asignada";
else
    echo "var esta asignada a '$var'";
fi

echo Asignando valor a var
var=123
echo "Interesante ${var+x}"

if [ -z ${var+x} ]; then
    echo "var no asignada";
else
    echo "var esta asignada a '$var'";
fi
exit 0
