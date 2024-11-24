if "%~1"== "" (
echo Missing suffix
) else (
rem call brtlpp11.bat
cd c:\fpc\%MYFPC%compiler
make distclean OS_TARGET=win64 FPC=c:\fpc\%MYFPC%compiler\x86_64\pp PP=c:\fpc\compiler\x86_64\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTX64%" || exit /b %ERRORLEVEL%
make all OS_TARGET=win64 FPC=c:\fpc\%MYFPC%compiler\x86_64\pp PP=c:\fpc\%MYFPC%compiler\x86_64\pp "OPT=@c:\fpc\bin\fpc.cfg -al %MYOPTX64%" -j
cd ..
rm -rf units.%1
cp -a compiler/x86_64/units units.%1
)
