<<<<<<< Updated upstream
set SUBARCH=avr6
call bavr
=======
rm build-stamp.avr-embedded
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPT=-O3" "OPTNEW=%MYOPTAVR%" "OS_TARGET=embedded" "CPU_TARGET=avr" "SUBARCH=avr6"
>>>>>>> Stashed changes
