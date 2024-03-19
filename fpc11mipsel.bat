if EXIST c:\fpc\%MYFPC%compiler\ppcrossmipsel.exe (
c:\fpc\%MYFPC%compiler\ppcrossmipsel @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcmipsel @c:\fpc\bin\fpc.cfg %*
)
