if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\linux
make distclean FPC=c:\fpc\%MYFPC%compiler\sparc64\pp PP=c:\fpc\compiler\sparc64\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTSPARC64%"
make all FPC=c:\fpc\%MYFPC%compiler\sparc64\pp PP=c:\fpc\compiler\sparc64\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTSPARC64%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)
