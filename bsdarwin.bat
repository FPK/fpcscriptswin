@echo off

if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%
mkdir output.%1
rem make distclean OVERRIDEVERSIONCHECK=1 %* -j OS_TARGET=darwin CPU_TARGET=i386 "CROSSOPT=%MYOPT386% -al -s" -j || exit /b %ERRORLEVEL%
make all OVERRIDEVERSIONCHECK=1 %* -j OS_TARGET=darwin CPU_TARGET=i386 "CROSSOPT=%MYOPT386% -al -s" || exit /b %ERRORLEVEL%
for /r "rtl" %%P in ("*.s") do (
  cp %%P output.%1
)
for /r "packages" %%P in ("*.s") do (
  cp %%P output.%1
)
)
