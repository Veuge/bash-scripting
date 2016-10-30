#!/bin/bash
#
echo $0
echo $1
echo $2

ARGC=$#
echo Num de argumentos $#

if [ $# -ne 2 ]; then
    echo No suficientes argumentos
    exit 1
fi

i=0
while [ $i -le $ARGC ]; do
    echo "ARGV[$i] = ${!i}"
    i=$((i+1))
done

#con shift
i=0
while true; do
    if [ $1 ]; then
        echo "ARGV[$i] = $1"
        shift
    else
        break
    fi
    i=$((i+1))
done
