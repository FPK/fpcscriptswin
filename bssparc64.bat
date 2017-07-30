@echo off

if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%
mkdir output.%1
make distclean  OVERRIDEVERSIONCHECK=1 CPU_TARGET=sparc64 OS_TARGET=linux "CROSSOPT=%MYCROSSOPTSPARC64% -al" "OPTNEW=%MYOPTSPARC64% -al" -j
if %ERRORLEVEL% neq 0 goto end
make all OVERRIDEVERSIONCHECK=1 CPU_TARGET=sparc64 OS_TARGET=linux "CROSSOPT=%MYCROSSOPTSPARC64% -al" "OPTNEW=%MYOPTSPARC64% -al" -j
rem if %ERRORLEVEL% neq 0 goto end
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

:end
