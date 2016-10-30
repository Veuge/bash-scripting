#!/bin/bash
#
echo Script que revisa si variable fue creada
echo La variable se llama "var"

if [ -z ${var+x} ]; then
    echo "var no asignada";
else
    echo "var esta asignada a '$var'";
fi

echo Asignando valor a var
var=123

if [ -z ${var+x} ]; then
    echo "var no asignada";
else
    echo "var esta asignada a '$var'";
fi
exit 0
