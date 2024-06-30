@echo off
set /a i=200
:loop
if exist "log.%i%" (
  set /a i+=1
  goto loop
) else (
  echo Copying to number %i%
  call cplog %i% || exit /b %ERRORLEVEL%
  goto break
)
:break
