make distclean -j
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "CROSSOPT=%MYOPTA64%" "OS_TARGET=win64" "CPU_TARGET=aarch64"
