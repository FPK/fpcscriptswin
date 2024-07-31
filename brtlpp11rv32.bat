if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\linux
make distclean FPC=c:\fpc\%MYFPC%compiler\riscv32\pp PP=c:\fpc\compiler\riscv32\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTRV32%" -j
make all FPC=c:\fpc\%MYFPC%compiler\riscv32\pp PP=c:\fpc\compiler\riscv32\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTRV32%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)
