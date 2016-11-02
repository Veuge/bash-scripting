#!/bin/bash
#
# Crear una variable y exportarla como variable de entorno, verificar su scope.
# Ejecutar este script mediante source 2-1.sh o . 2-1.sh

echo "El nombre de variable será 'STRING'";
STRING=melliflous;
echo "El contenido de 'STRING' es $STRING";
echo "Exportando como variable de entorno...";
export STRING;
echo "Comprobando la lista de variables de entorno...";
if [ $(env | grep -cw STRING) -eq 1 ]; then
    echo "La variable 'STRING' es de entorno";
else
    echo "La variable 'STRING' no es de entorno";
fi

echo $(env | grep STRING);
