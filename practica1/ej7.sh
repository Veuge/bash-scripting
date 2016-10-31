#!/bin/bash
#
# Script que ilustra el uso del comando echo con la opcion -e.
#
echo TEXTO ORIGINAL
echo -e "In facilisis scelerisqui dui vel dignissim."       # texto original
echo BACKSPACE
echo -e "In \bfacilisis scelerisqui \bdui vel dignissim."   # backspace
echo NEW LINES
echo -e "In \nfacilisis scelerisqui \ndui vel \ndignissim." # new lines
echo CARRIAGE RETURN
echo -e "In \rfacilisis scelerisqui \rdui vel dignissim."   # carriage return
echo TAB
echo -e "In \tfacilisis scelerisqui \tdui vel dignissim."   # tab
echo -en '\007'
echo -en "\011"
echo -en "\012"
