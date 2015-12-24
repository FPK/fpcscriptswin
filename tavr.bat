set start=%time%
make distclean TEST_DELTEMP=1 FPC=%CD%\..\compiler\ppc386 TEST_FPC=%CD%\..\compiler\ppcrossavr V=1 "TEST_SUBARCH=avr5" "TEST_OPT=%MYTEST_OPTAVR%" %1 %2 %3 %4 %5 %6 %7 %8 %9
make full TEST_DELTEMP=1 FPCFPMAKE=%CD%\..\compiler\ppc386 TEST_FPC=%CD%\..\compiler\ppcrossavr V=1 "TEST_SUBARCH=avr5" "TEST_OPT=%MYTEST_OPTAVR% @%CD%\..\rtl\embedded\rtl.cfg -XPavr-embedded- -Wpavrsim" EMULATOR=c:\fpc\avrsim\avrsim.exe %1 %2 %3 %4 %5 %6
set end=%time%
echo %start%
echo %end%
