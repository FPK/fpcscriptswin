@echo off
make distclean
make distclean
call bavr6.bat || exit /b %ERRORLEVEL%
cd tests
call tavr6.bat || exit /b %ERRORLEVEL%
call storelogavr6.bat || exit /b %ERRORLEVEL%
