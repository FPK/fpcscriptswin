rm build-stamp.avr-embedded
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPTNEW=%MYOPTAVR%" "OS_TARGET=embedded" "CPU_TARGET=avr" "SUBARCH=avrtiny"
