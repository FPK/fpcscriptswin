make clean -j
fptime make all FPC=fpc CPU_TARGET=arm OS_TARGET=linux "CROSSOPT=%MYOPTARM% -Cparmv2 -Avasm -XP -Cffpa" OPT="-dFPC_OARM" OVERRIDEVERSIONCHECK=1 "%* -j
