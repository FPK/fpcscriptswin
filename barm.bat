make distclean -j
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "CROSSOPT=%MYOPTARM%" "OS_TARGET=linux" "CPU_TARGET=arm"
