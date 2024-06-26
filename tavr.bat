set start=%time%
make distclean TEST_DELTEMP=1 FPC=%CD%\..\compiler\ppc386 TEST_FPC=%CD%\..\compiler\ppcrossavr V=1 "TEST_SUBARCH=avr5" "TEST_OPT=%MYTEST_OPTAVR%" %* "TEST_VERBOSE=1"
make full TEST_DELTEMP=1 FPCFPMAKE=%CD%\..\compiler\ppc386 TEST_FPC=%CD%\..\compiler\ppcrossavr V=1 "TEST_SUBARCH=avr5" "TEST_OPT=%MYTEST_OPTAVR% -XPavr-embedded- -Wpavrsim" EMULATOR=c:\fpc\avrsim\avrsim.exe %* -j
set end=%time%
echo %start%
echo %end%
