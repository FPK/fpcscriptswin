@echo off
make distclean
call bavrxmega3.bat || exit /b %ERRORLEVEL%
cd tests
call tavrxmega3.bat || exit /b %ERRORLEVEL%
call storelogavrxmega3.bat || exit /b %ERRORLEVEL%
