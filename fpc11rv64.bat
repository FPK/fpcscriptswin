if EXIST c:\fpc\%MYFPC%compiler\ppcrossrv64.exe (
c:\fpc\%MYFPC%compiler\ppcrossrv64 @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcrv64 @c:\fpc\bin\fpc.cfg %*
)
