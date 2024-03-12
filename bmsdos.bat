rm build-stamp.i8086-msdos
fptime make all CPU_TARGET=i8086 OS_TARGET=msdos "CROSSOPT=%MYOPT8086%" OVERRIDEVERSIONCHECK=1 %* -j 4 || exit /b %ERRORLEVEL%
