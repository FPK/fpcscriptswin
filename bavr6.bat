rm build-stamp.avr-embedded
fptime make all OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j "OPT=-O3" "OPTNEW=%MYOPTAVR%" "OS_TARGET=embedded" "CPU_TARGET=avr" "SUBARCH=avr6"
