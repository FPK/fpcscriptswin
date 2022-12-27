@echo off
make distclean
call bavrtiny.bat || exit /b %ERRORLEVEL%
cd tests
call tavrtiny.bat || exit /b %ERRORLEVEL%
call storelogtiny.bat || exit /b %ERRORLEVEL%
