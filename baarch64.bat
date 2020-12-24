make distclean -j
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPT=-O3" "OPTNEW=%MYOPTAARCH64%" "OS_TARGET=linux" "CPU_TARGET=aarch64"
