rm build-stamp.powerpc-linux
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPT=-O3" "OPTNEW=%MYOPTSPARC%" "OS_TARGET=linux" "CPU_TARGET=powerpc"
