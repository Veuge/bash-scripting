#!/bin/bash

echo Usuario actual `whoami`
echo Usuarios conectados al sistema `uptime | cut -d"," -f2`
echo Fecha y hora: `date`
exit 0
