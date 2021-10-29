if EXIST c:\fpc\%MYFPC%compiler\ppcx64.exe (
c:\fpc\%MYFPC%compiler\ppcx64 -n @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcrossx64 -n @c:\fpc\bin\fpc.cfg %*
)
