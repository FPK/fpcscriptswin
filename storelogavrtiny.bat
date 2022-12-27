@echo off
set /a i=1
:loop
if exist "log.avrtiny.%i%" (
  set /a i+=1
  goto loop
) else (
  echo Copying to number %i%
  call cplogavrtiny %i%
  goto break
)
:break
