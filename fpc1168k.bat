if EXIST c:\fpc\%MYFPC%compiler\ppcross68k.exe (
c:\fpc\%MYFPC%compiler\ppcross68k @c:\fpc\bin\fpc.cfg %*
) else (
c:\fpc\%MYFPC%compiler\ppc68k @c:\fpc\bin\fpc.cfg %*
)
