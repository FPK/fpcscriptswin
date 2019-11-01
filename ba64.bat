make distclean
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "CROSSOPT=%MYOPTA64%" "OS_TARGET=linux" "CPU_TARGET=aarch64"
