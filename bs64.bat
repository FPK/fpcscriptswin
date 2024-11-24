@echo off

if "%~1"== "" (
echo Missing suffix
) else (
cd %MYFPCDIR%\%MYFPC%
mkdir output.%1
make distclean FPC=c:\pp\bin\i386-win32\ppcrossx64 OVERRIDEVERSIONCHECK=1 CPU_TARGET=x86_64 OS_TARGET=win64 CPU_SOURCE=x86_64 OS_SOURCE=win64 "CROSSOPT=%MYCROSSOPTX64% -al" "OPTNEW=%MYOPTX64% -al" -j || exit /b %ERRORLEVEL%
make all FPC=c:\pp\bin\i386-win32\ppcrossx64 OVERRIDEVERSIONCHECK=1 CPU_TARGET=x86_64 OS_TARGET=win64 CPU_SOURCE=x86_64 OS_SOURCE=win64 "CROSSOPT=%MYCROSSOPTX64% -al -XPx86_64-win64-" "OPTNEW=%MYOPTX64% -al -XPx86_64-win64-" -j
for /r "rtl" %%P in ("*.s") do (
  cp %%P output.%1
)
for /r "compiler" %%P in ("*.s") do (
  cp %%P output.%1
)
for /r "packages" %%P in ("*.s") do (
  cp %%P output.%1
)
)
