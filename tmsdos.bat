set start=%time%
make clean TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 "TEST_OPT=-O- -Fd"  %1 %2 %3 %4 %5 %6 %7 %8 %9
make all TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 TEST_BINUTILSPREFIX=msdos- "TEST_OPT=-O- -Fd -XX" %1 %2 %3 %4 %5 %6 %7 %8 %9
make digest TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 "TEST_OPT=-O- -Fd"  %1 %2 %3 %4 %5 %6 %7 %8 %9
set end=%time%
echo %start%
echo %end%