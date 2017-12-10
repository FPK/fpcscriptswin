@echo off
set /a i=10
:loop
if exist "log.avr.%i%" (
  set /a i+=1
  goto loop
) else (
  echo Copying to number %i%
  call cplogavr %i%
  goto break
)
:break
