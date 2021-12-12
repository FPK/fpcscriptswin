set ARCH=%1-%2
set SRCARCH=%1-%2
if "%~3"=="" goto nosrcarch
set SRCARCH=%3
:nosrcarch
set FPCBIN=%MYFPCDIR%\binaries\i386-win32
cp %MINGW%\%SRCARCH%-as.exe %FPCBIN%\%ARCH%-as.exe
strip %FPCBIN%\%ARCH%-as.exe
cp %MINGW%\%SRCARCH%-ar.exe %FPCBIN%\%ARCH%-ar.exe
strip %FPCBIN%\%ARCH%-ar.exe
cp %MINGW%\%SRCARCH%-ld.exe %FPCBIN%\%ARCH%-ld.exe
strip %FPCBIN%\%ARCH%-ld.exe
cp %MINGW%\%SRCARCH%-objdump.exe %FPCBIN%\%ARCH%-objdump.exe
strip %FPCBIN%\%ARCH%-objdump.exe
cp %MINGW%\%SRCARCH%-strip.exe %FPCBIN%\%ARCH%-strip.exe
strip %FPCBIN%\%ARCH%-strip.exe
cp %MINGW%\%SRCARCH%-objcopy.exe %FPCBIN%\%ARCH%-objcopy.exe
strip %FPCBIN%\%ARCH%-objcopy.exe
cp %MINGW%\%SRCARCH%-nm.exe %FPCBIN%\%ARCH%-nm.exe
strip %FPCBIN%\%ARCH%-nm.exe
