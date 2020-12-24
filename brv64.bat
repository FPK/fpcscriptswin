make distclean "OS_TARGET=linux" "CPU_TARGET=riscv64" -j
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPTNEW=%MYOPTRV64%" "OS_TARGET=linux" "CPU_TARGET=riscv64"
