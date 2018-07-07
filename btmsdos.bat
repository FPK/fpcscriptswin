@echo off
make distclean || exit /b %ERRORLEVEL%
make distclean || exit /b %ERRORLEVEL%
call bmsdos.bat || exit /b %ERRORLEVEL%
cd tests
call tmsdos.bat || exit /b %ERRORLEVEL%
call storelogmsdos.bat || exit /b %ERRORLEVEL%
