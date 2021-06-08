make clean -j
fptime make all FPC=fpc CPU_TARGET=arm OS_TARGET=linux "CROSSOPT=%MYOPTARM% -Cparmv4" OVERRIDEVERSIONCHECK=1 %* -j
