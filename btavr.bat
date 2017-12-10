@echo off
make distclean
make distclean
call bavr.bat
if %ERRORLEVEL% neq 0 goto end
cd tests
call tavr.bat
if %ERRORLEVEL% neq 0 goto end
call storelogavr.bat
:end
