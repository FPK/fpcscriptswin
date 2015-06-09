if EXIST c:\fpc\%MYFPC%compiler\ppcrosssparc.exe (
c:\fpc\%MYFPC%compiler\ppcrosssparc @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
) else (
c:\fpc\%MYFPC%compiler\ppcsparc @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
)
