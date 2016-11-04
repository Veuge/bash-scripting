#!/bin/bash
#
# Script que recibe dos variables como argumentos, y realiza operaciones aritmeticas con expr.

function validate() {
    if [[ "$1" =~ ^[0-9]+$ ]] && [[ "$2" =~ ^[0-9]+$ ]]; then
	return 0;
    else
	return 1;
    fi
}

NUM1=$1;
NUM2=$2;
validate $NUM1 $NUM2;

while [ $? -eq 1 ]; do
    printf "Por favor inserte dos numeros.\n";
    read NUM1;
    read NUM2;
    validate $NUM1 $NUM2;
done

printf "Comenzando las operaciones aritméticas\n";
SUM=$(expr "$NUM1" + "$NUM2");
printf "%-20s %-20s\n" "Suma" "$NUM1 + $NUM2 = ${SUM}";
RES=$(expr "$NUM1" - "$NUM2");
printf "%-20s %-20s\n" "Resta" "$NUM1 - $NUM2 = ${RES}";
MUL=$(expr "$NUM1" \* "$NUM2");
printf "%-20s %-20s\n" "Multiplicacion" "$NUM1 * $NUM2 = ${MUL}";
if [ $NUM2 -eq 0 ]; then
    printf "%-20s %-20s\n" "Division" "No se puede dividir entre 0";
else
    DIV=$(expr $NUM1 / $NUM2);
    printf "%-20s %-20s\n" "Division (cociente)" "$NUM1 / $NUM2 = ${DIV}";
fi
exit 0;
