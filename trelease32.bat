set start=%time%
make distclean TEST_DELTEMP=1 V=1 TEST_FPC=ppc386 "TEST_OPT=%MYTEST_OPT386%" %* -j || exit /b %ERRORLEVEL%
make full TEST_DELTEMP=1 V=1 TEST_FPC=ppc386 "TEST_OPT=%MYTEST_OPT386%" %* -j || exit /b %ERRORLEVEL%
set end=%time%
echo %start%
echo %end%
