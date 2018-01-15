if EXIST c:\fpc\%MYFPC%compiler\ppcross68k.exe (
c:\fpc\%MYFPC%compiler\ppcross68k @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
) else (
c:\fpc\%MYFPC%compiler\ppc68k @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
)
