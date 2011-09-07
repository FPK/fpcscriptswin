if EXIST c:\fpc\%MYFPC%compiler\ppcross.exe (
c:\fpc\%MYFPC%compiler\ppcross @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
) else (
c:\fpc\%MYFPC%compiler\ppcavr @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
)
