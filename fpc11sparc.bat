if EXIST c:\fpc\%MYFPC%compiler\ppcrosssparc.exe (
c:\fpc\%MYFPC%compiler\ppcrosssparc @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcsparc @c:\fpc\bin\fpc.cfg %*
)
