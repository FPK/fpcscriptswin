if EXIST c:\fpc\%MYFPC%compiler\ppcrossavr.exe (
c:\fpc\%MYFPC%compiler\ppcrossavr @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcavr @c:\fpc\bin\fpc.cfg %*
)
