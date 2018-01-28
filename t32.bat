set start=%time%
make distclean TEST_DELTEMP=1 TEST_FPC=%CD%\..\compiler\ppc386 V=1 "TEST_OPT=%MYTEST_OPT386%" %1 %2 %3 %4 %5 %6 %7 %8 %9
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%
make full TEST_DELTEMP=1 TEST_FPC=%CD%\..\compiler\ppc386 V=1 "TEST_OPT=%MYTEST_OPT386%" %1 %2 %3 %4 %5 %6 %7 %8 %9 -j
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%
set end=%time%
echo %start%
echo %end%
