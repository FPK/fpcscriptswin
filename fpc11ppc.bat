if EXIST c:\fpc\%MYFPC%compiler\ppcrossarm.exe (
c:\fpc\%MYFPC%compiler\ppcrossppc @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
) else (
c:\fpc\%MYFPC%compiler\ppcppc @c:\fpc\bin\fpc.cfg %1 %2 %3 %4 %5 %6 %7 %8 %9
)
