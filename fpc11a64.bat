rem if EXIST c:\fpc\%MYFPC%compiler\ppca64.exe (
rem c:\fpc\%MYFPC%compiler\ppcx64 -n @c:\fpc\bin\fpc.cfg %*
rem ) else (
c:\fpc\%MYFPC%compiler\ppcrossa64 -n @c:\fpc\bin\fpc.cfg %*
rem )
