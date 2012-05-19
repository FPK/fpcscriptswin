@echo off
call b.bat
if %ERRORLEVEL% neq 0 goto end
call t32.bat
:end
