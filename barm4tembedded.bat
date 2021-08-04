make clean 
fptime make all FPC=fpc CPU_TARGET=arm OS_TARGET=embedded SUBARCH=armv4t "CROSSOPT=%MYOPTARM% -Cfsoft" OVERRIDEVERSIONCHECK=1 %* -j  || exit /b %ERRORLEVEL%
