set start=%time%
make distclean TEST_DELTEMP=1 FPC=%CD%\..\compiler\ppc386 TEST_FPC=%CD%\..\compiler\ppcrossavr V=1 "TEST_SUBARCH=avr6" "TEST_OPT=%MYTEST_OPTAVR%" %* "TEST_VERBOSE=1"
rem pass -Cpavr6 to override -Wpavrsim resetting the subarchitecture to avr5
make full TEST_DELTEMP=1 FPCFPMAKE=%CD%\..\compiler\ppc386 TEST_FPC=%CD%\..\compiler\ppcrossavr V=1 "TEST_SUBARCH=avr6" "TEST_OPT=%MYTEST_OPTAVR% -XPavr-embedded- -Wpavrsim -Cpavr6" EMULATOR=c:\fpc\avrsim\avrsim.exe %* -j %MYCORES%
set end=%time%
echo %start%
echo %end%
