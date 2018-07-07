rm build-stamp.i8086-msdos
fptime make all CPU_TARGET=i8086 OS_TARGET=msdos "CROSSOPT=%MYOPT8086%" OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j 4 || exit /b %ERRORLEVEL%
