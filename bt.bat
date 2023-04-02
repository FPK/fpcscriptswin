@echo off
call b.bat || exit /b %ERRORLEVEL%
cd tests
call t32.bat || exit /b %ERRORLEVEL%
call storelog.bat || exit /b %ERRORLEVEL%
cd ..
