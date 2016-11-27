@echo off

if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%
mkdir output.%1
rem make distclean OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j OS_TARGET=darwin CPU_TARGET=i386 "CROSSOPT=%MYOPT386% -al -s" -j
if %ERRORLEVEL% neq 0 goto end
make all OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j OS_TARGET=darwin CPU_TARGET=i386 "CROSSOPT=%MYOPT386% -al -s"
rem if %ERRORLEVEL% neq 0 goto end
for /r "rtl" %%P in ("*.s") do (
  cp %%P output.%1
)
for /r "packages" %%P in ("*.s") do (
  cp %%P output.%1
)
)

:end
