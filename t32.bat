set start=%time%
make clean TEST_DELTEMP=1 TEST_FPC=%CD%\..\compiler\ppc386 V=1 TEST_OPT=-O4 %1 %2 %3 %4 %5 %6 %7 %8 %9
make all TEST_DELTEMP=1 TEST_FPC=%CD%\..\compiler\ppc386 V=1 "TEST_OPT=-O4 -Fd" %1 %2 %3 %4 %5 %6 %7 %8 %9 -j 3
make digest TEST_DELTEMP=1 TEST_FPC=%CD%\..\compiler\ppc386 V=1 TEST_OPT=-O4 %1 %2 %3 %4 %5 %6 %7 %8 %9
set end=%time%
echo %start%
echo %end%
