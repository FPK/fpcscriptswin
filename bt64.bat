@echo off
make distclean CPU_TARGET=x86_64 OS_TARGET=win64 CPU_SOURCE=x86_64 OS_SOURCE=win64
make distclean CPU_TARGET=x86_64 OS_TARGET=win64 CPU_SOURCE=x86_64 OS_SOURCE=win64
call b64.bat || exit /b %ERRORLEVEL%
cd tests
call t64.bat || exit /b %ERRORLEVEL%
call storelog64.bat || exit /b %ERRORLEVEL%
