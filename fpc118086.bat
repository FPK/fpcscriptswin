if EXIST c:\fpc\%MYFPC%compiler\ppcross8086.exe (
c:\fpc\%MYFPC%compiler\ppcross8086 @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppc8086 @c:\fpc\bin\fpc.cfg %*
)
