if EXIST c:\fpc\%MYFPC%compiler\ppcrosssparc64.exe (
c:\fpc\%MYFPC%compiler\ppcrosssparc64 @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
) else (
c:\fpc\%MYFPC%compiler\ppcsparc64 @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
)
