rm build*.*
make clean all OVERRIDEVERSIONCHECK=1 %* -j || exit /b %ERRORLEVEL%
make clean all FPC=c:\pp\bin\i386-win32\ppcrossx64 OVERRIDEVERSIONCHECK=1 CPU_TARGET=x86_64 OS_TARGET=win64 CPU_SOURCE=x86_64 OS_SOURCE=win64 -j || exit /b %ERRORLEVEL%
make clean all OVERRIDEVERSIONCHECK=1 "CROSSOPT=-O4 -Cparmv5te" OS_TARGET=linux CPU_TARGET=arm || exit /b %ERRORLEVEL%
make clean all OVERRIDEVERSIONCHECK=1 OS_TARGET=linux CPU_TARGET=powerpc64 || exit /b %ERRORLEVEL%
make clean all OVERRIDEVERSIONCHECK=1 OS_TARGET=linux CPU_TARGET=sparc || exit /b %ERRORLEVEL%
make clean all OVERRIDEVERSIONCHECK=1 OS_TARGET=linux CPU_TARGET=powerpc || exit /b %ERRORLEVEL%
make clean all OVERRIDEVERSIONCHECK=1 OS_TARGET=linux CPU_TARGET=mipsel || exit /b %ERRORLEVEL%
