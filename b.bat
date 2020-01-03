rm build-stamp.i386-win32
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPTNEW=%MYOPT386%" || exit /b %ERRORLEVEL%
