set start=%time%
set TEST_FPC=%CD%\..\compiler\ppcx64
make distclean TEST_DELTEMP=1 FPC=%CD%\..\compiler\ppcx64 TEST_FPC=%TEST_FPC% V=1 "TEST_OPT=%MYTEST_OPTX64%" %*
make full TEST_DELTEMP=1 TEST_FPC=%TEST_FPC% V=1 FPC=%CD%\..\compiler\ppcx64 "OPT=@c:\fpc\bin\fpc.cfg" "TEST_OPT=%MYTEST_OPTX64%" %* -j
set end=%time%
echo %start%
echo %end%
