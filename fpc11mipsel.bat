if EXIST c:\fpc\%MYFPC%compiler\ppcrossmipsel.exe (
c:\fpc\%MYFPC%compiler\ppcrossmipsel @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
) else (
c:\fpc\%MYFPC%compiler\ppcmipsel @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
)
