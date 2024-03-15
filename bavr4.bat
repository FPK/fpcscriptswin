<<<<<<< Updated upstream
set SUBARCH=avr4
call bavr
=======
rm build-stamp.avr-embedded
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPTNEW=%MYOPTAVR%" "OS_TARGET=embedded" "CPU_TARGET=avr" "SUBARCH=avr4"
>>>>>>> Stashed changes
