@echo off

if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC% || exit /b %ERRORLEVEL%
mkdir output.%1
set MAKEOPTS=OVERRIDEVERSIONCHECK=1 CPU_TARGET=sparc64 OS_TARGET=linux "CROSSOPT=%MYCROSSOPTSPARC64% -al" "OPTNEW=%MYOPTSPARC64% -al" -j
make distclean %MAKEOPTS% || exit /b %ERRORLEVEL%
make distclean %MAKEOPTS% || exit /b %ERRORLEVEL%
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
