#!/bin/bash
#
# Numero maximo de usuarios que pueden conectarse al sistema, numero de usuarios conectados actualmente.
#

MAX=$(cat /proc/sys/kernel/pty/max);
ACTUAL=$(users | wc -w);

printf "%-20s %-20s\n" "Numero maximo de usuarios:" "${MAX}";
printf "%-20s %-20s\n" "Numero actual de usuarios:" "${ACTUAL}";
exit 0;
