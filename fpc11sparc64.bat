if EXIST c:\fpc\%MYFPC%compiler\ppcrosssparc64.exe (
c:\fpc\%MYFPC%compiler\ppcrosssparc64 @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcsparc64 @c:\fpc\bin\fpc.cfg %*
)
