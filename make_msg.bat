set cwd=%cd%
cd %MYFPCDIR%\%MYFPC%compiler
make msg -j
cd %cwd%
