if EXIST c:\fpc\%MYFPC%compiler\ppcrossarm.exe (
c:\fpc\%MYFPC%compiler\ppcrossarm @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcarm @c:\fpc\bin\fpc.cfg %*
)
