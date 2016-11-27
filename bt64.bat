@echo off
make distclean
make distclean
call b64.bat
if %ERRORLEVEL% neq 0 goto end
cd tests
call t64.bat
rem cd ..
:end
