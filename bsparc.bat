rm build-stamp.sparc-linux
fptime make all OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j "OPT=-O3" "OPTNEW=%MYOPTSPARC%" "OS_TARGET=linux" "CPU_TARGET=sparc"
