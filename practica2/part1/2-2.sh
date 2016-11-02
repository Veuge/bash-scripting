#!/bin/bash
#
# Ver el valor de la variable de entorno creada en 2-1.sh, anular su definicion y verificar.

echo "Verificando variable 'STRING'";
echo "STRING = $STRING";
echo "Anulando definición de variable 'STRING'...";
unset STRING;
echo "$STRING";

if [ $(env | grep -cw STRING) -eq 1 ]; then
    echo "Variable 'STRING es una variable de entorno'";
else
    echo "Variable 'STRING' no es una variable de entorno";
fi
