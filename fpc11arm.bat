if EXIST c:\fpc\compiler\ppcrossarm.exe (
c:\fpc\compiler\ppcrossarm @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
) else (
c:\fpc\compiler\ppcarm @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
)
