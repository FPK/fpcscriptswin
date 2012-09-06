set start=%time%
make clean TEST_DELTEMP=1 FPC=%CD%\..\compiler\ppcx64 TEST_FPC=%CD%\..\compiler\ppcx64 V=1 TEST_OPT=-O2 %1 %2 %3 %4 %5 %6 %7 %8 %9
make all TEST_DELTEMP=1 FPC=%CD%\..\compiler\ppcx64 TEST_FPC=%CD%\..\compiler\ppcx64 V=1 "TEST_OPT=-O2 -Fd" %1 %2 %3 %4 %5 %6 %7 %8 %9 -j 2
make digest TEST_DELTEMP=1 FPC=%CD%\..\compiler\ppcx64 TEST_FPC=%CD%\..\compiler\ppcx64 V=1 TEST_OPT=-O2 %1 %2 %3 %4 %5 %6 %7 %8 %9
set end=%time%
echo %start%
echo %end%
