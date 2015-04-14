if "%~1"== "" (
echo Missing suffix
) else (
cd c:\fpc\%MYFPC%rtl\msdos
make distclean FPC=c:\fpc\%MYFPC%compiler\i8086\pp PP=c:\fpc\compiler\i8086\pp OS_TARGET=msdos "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPT8086%"
make all FPC=c:\fpc\%MYFPC%compiler\i8086\pp PP=c:\fpc\compiler\i8086\pp OS_TARGET=msdos "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPT8086%" -j
cd ..
rm -rf units.%1
cp -a units units.%1
)
