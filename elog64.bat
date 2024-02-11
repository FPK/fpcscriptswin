@echo off
set FULLTARGET=x86_64-win64

set TESTSPATH=%MYFPCDIR%\%MYFPC%\tests
set /a i=50
:loop
if exist "%TESTSPATH%\log.64.%i%" (
  set /a i+=1
  goto loop
) else (
  echo %i%
  set /a i-=1
  goto break
)
:break
call e %TESTSPATH%\faillist.64.%i% %TESTSPATH%\log.64.%i% %TESTSPATH%\longlog.64.%i%
