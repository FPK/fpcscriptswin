@echo off
set /a i=1
:loop
if exist "log.avr6.%i%" (
  set /a i+=1
  goto loop
) else (
  echo Copying to number %i%
  call cplogavr6 %i%
  goto break
)
:break
