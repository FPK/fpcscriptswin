@echo off

if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC% || exit /b %ERRORLEVEL%
mkdir output.%1
set MAKEOPTS=OVERRIDEVERSIONCHECK=1 CPU_TARGET=riscv64 OS_TARGET=linux "CROSSOPT=%MYCROSSOPTRV6464% -al" "OPTNEW=%MYOPTRV64% -al" -j
rem make distclean || exit /b %ERRORLEVEL%
rem make distclean || exit /b %ERRORLEVEL%
make all %MAKEOPTS% || exit /b %ERRORLEVEL%
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
