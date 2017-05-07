@echo off
set /a i=50
:loop
if exist "log.64.%i%" (
  set /a i+=1
  goto loop
) else (
  echo Copying to number %i%
  call cplog64 %i%
  goto break
)
:break
