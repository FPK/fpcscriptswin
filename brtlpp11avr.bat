if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\embedded
make distclean FPC=c:\fpc\%MYFPC%compiler\avr\pp PP=c:\fpc\compiler\avr\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTAVR%"
make all FPC=c:\fpc\%MYFPC%compiler\avr\pp PP=c:\fpc\compiler\avr\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTAVR%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)
