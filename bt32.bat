@echo off
make distclean
make distclean
call b.bat
if %ERRORLEVEL% neq 0 goto end
cd tests
call t32.bat
:end
