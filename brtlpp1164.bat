@echo off
if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\win64
make distclean FPC=c:\fpc\%MYFPC%compiler\x86_64\pp PP=c:\fpc\compiler\x86_64\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTX64%"
make all FPC=c:\fpc\%MYFPC%compiler\x86_64\pp PP=c:\fpc\%MYFPC%compiler\x86_64\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTX64%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
cd ..
)
