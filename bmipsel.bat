make distclean -j
make distclean -j
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPT=-O3" "OPTNEW=%MYOPTMIPSEL%" "OS_TARGET=linux" "CPU_TARGET=mipsel"
