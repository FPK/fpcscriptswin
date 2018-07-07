@echo off
make distclean || exit /b %ERRORLEVEL%
make distclean || exit /b %ERRORLEVEL%
call b64.bat || exit /b %ERRORLEVEL%
cd tests
call t64.bat || exit /b %ERRORLEVEL%
call storelog64.bat || exit /b %ERRORLEVEL%
