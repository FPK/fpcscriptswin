if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\linux
make distclean FPC=c:\fpc\%MYFPC%compiler\arm\pp PP=c:\fpc\compiler\arm\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTARM%"
make all FPC=c:\fpc\%MYFPC%compiler\arm\pp PP=c:\fpc\compiler\arm\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTARM%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)