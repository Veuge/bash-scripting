#!/bin/bash
#
# Leer dos variables para ilustrar todos los casos posibles de uso de echo (sin comillas, con expansion de datos,
# sin expansion de datos con sustitucion de comandos, etc).

echo "Comillas dobles: $1 $2"  # dobles comillas
echo Sin comillas: $1 $2        # sin comillas
echo Con expansion: ${1} ${2}   # con expansion
echo "Con comillas y expansion: ${1} ${2}"
echo 'Comillas simples: $1 $2'  # con comillas simples
echo Con comillas invertidas `$1 $2`
