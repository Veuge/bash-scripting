#!/bin/bash
#
RES=`grep "^$USER:" /etc/passwd | wc -l`
if [ $RES -lt 1 ]
then
    echo NO USUARIOS CON ESE NOMBRE

CONECTADO=`who | grep "^$USER" | wc -l`
