if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\linux
make distclean FPC=c:\fpc\%MYFPC%compiler\aarch64\pp PP=c:\fpc\compiler\arm\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTA64%" -j
make all FPC=c:\fpc\%MYFPC%compiler\aarch64\pp PP=c:\fpc\compiler\aarch64\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTA64%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)
