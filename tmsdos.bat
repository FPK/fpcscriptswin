set start=%time%
make distclean TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 "TEST_OPT=%MYTEST_OPT8086%" -j %*
make all TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 TEST_BINUTILSPREFIX=msdos- "TEST_OPT=%MYTEST_OPT8086%" -j EMULATOR=%CD%\utils\dosbox\dosbox_wrapper %*
make digest TEST_DELTEMP=1 FPCDIR=%CD%\.. TEST_FPC=%CD%\..\compiler\ppcross8086 TEST_CPU_TARGET=i8086 TEST_OS_TARGET=msdos V=1 "TEST_OPT=%MYTEST_OPT8086%" -j  %*
set end=%time%
echo %start%
echo %end%
