rm build-stamp.z80-zxspectrum
make clean FPC=fpc OVERRIDEVERSIONCHECK=1 %* -j "CROSSOPT=%MYOPTZ80% -XP" "OS_TARGET=zxspectrum" "CPU_TARGET=z80"
make all FPC=fpc OVERRIDEVERSIONCHECK=1 %* -j "CROSSOPT=%MYOPTZ80% -XP" "OS_TARGET=zxspectrum" "CPU_TARGET=z80"
