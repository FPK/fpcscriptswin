if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\linux
make distclean FPC=c:\fpc\%MYFPC%compiler\powerpc\pp PP=c:\fpc\compiler\powerpc\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTPPC%"
make all FPC=c:\fpc\%MYFPC%compiler\powerpc\pp PP=c:\fpc\compiler\powerpc\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTPPC%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)