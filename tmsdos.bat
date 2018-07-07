set start=%time%
make distclean TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 "TEST_OPT=%MYTEST_OPT8086%" -j %1 %2 %3 %4 %5 %6 %7 %8 %9
make all TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 TEST_BINUTILSPREFIX=msdos- "TEST_OPT=%MYTEST_OPT8086%" -j EMULATOR=%CD%\utils\dosbox\dosbox_wrapper %1 %2 %3 %4 %5 %6 %7 %8 %9
make digest TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 "TEST_OPT=%MYTEST_OPT8086%" -j  %1 %2 %3 %4 %5 %6 %7 %8 %9
set end=%time%
echo %start%
echo %end%
