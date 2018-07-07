rm build-stamp.m68k-macos
fptime make all OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j "OPTNEW=%MYOPTM68K%" "OS_TARGET=macos" "CPU_TARGET=m68k"
