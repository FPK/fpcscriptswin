rm build-stamp.sparc-linux
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPT=-O3" "OPTNEW=%MYOPTSPARC%" "OS_TARGET=linux" "CPU_TARGET=sparc"
