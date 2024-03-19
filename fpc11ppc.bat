if EXIST c:\fpc\%MYFPC%compiler\ppcrossarm.exe (
c:\fpc\%MYFPC%compiler\ppcrossppc @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppcppc @c:\fpc\bin\fpc.cfg %*
)
