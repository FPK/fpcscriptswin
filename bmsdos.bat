set start=%time%
make distclean
make distclean
make all CPU_TARGET=i8086 OS_TARGET=msdos "CROSSOPT=-CX" OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j 4
set end=%time%
echo %start%
echo %end%
