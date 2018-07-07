@echo off
set /a i=1
:loop
if exist "log.msdos.%i%" (
  set /a i+=1
  goto loop
) else (
  echo Copying to number %i%
  call cplogmsdos %i%
  goto break
)
:break
