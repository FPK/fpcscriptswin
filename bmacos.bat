rm build-stamp.m68k-macos
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPTNEW=%MYOPTM68K%" "OS_TARGET=macos" "CPU_TARGET=m68k"
