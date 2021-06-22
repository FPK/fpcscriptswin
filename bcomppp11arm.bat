if "%~1"== "" (
echo Missing suffix
) else (
rem call brtlpp11.bat
cd c:\fpc\%MYFPC%compiler
make distclean OS_TARGET=linux FPC=c:\fpc\%MYFPC%compiler\arm\pp PP=c:\fpc\compiler\arm\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTARM%"
make all OS_TARGET=linux FPC=c:\fpc\%MYFPC%compiler\arm\pp PP=c:\fpc\%MYFPC%compiler\arm\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTARM%" -j
cd ..
rm -rf units.%1
cp -a compiler/arm/units units.%1
)
