if "%~1"== "" (
echo Missing suffix
) else (
call brtlpp11.bat
cd c:\fpc\%MYFPC%compiler
make distclean FPC=c:\fpc\%MYFPC%compiler\i386\pp PP=c:\fpc\compiler\i386\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPT386%"
make all FPC=c:\fpc\%MYFPC%compiler\i386\pp PP=c:\fpc\%MYFPC%compiler\i386\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPT386%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)
