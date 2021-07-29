rm build-stamp.avr-embedded
IF "%subarch%"=="" (
    set SUBARCH=avr5
)
fptime make all OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j "CROSSOPT=%MYOPTAVR%" "OS_TARGET=embedded" "CPU_TARGET=avr" "SUBARCH=%SUBARCH%"
