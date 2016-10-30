#!/bin/bash
#
# Numero maximo de usuarios? por PIDs
#
echo `cat /proc/sys/kernel/pid_max`
echo `ulimit -a`
echo `uptime | cut -d"," -f2`
