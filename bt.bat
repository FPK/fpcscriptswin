call b.bat
if errorlevel 0 goto test
goto end
:test
cd tests
call t32.bat
:end