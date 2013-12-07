@echo off
call b64.bat
if %ERRORLEVEL% neq 0 goto end
cd tests
call t64.bat
cd ..
:end
