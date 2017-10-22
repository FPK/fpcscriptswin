cd %MYFPCDIR%\export
if %ERRORLEVEL% neq 0 goto end
svn export https://svn.freepascal.org/svn/fpcbuild/tags/release_%1
if %ERRORLEVEL% neq 0 goto end
cd release_%1
if %ERRORLEVEL% neq 0 goto end
wget ftp://ftp.freepascal.org/fpc/contrib/libgdb/v7.4/libgdb-7.4-mingw32.zip
if %ERRORLEVEL% neq 0 goto end
cd fpcsrc
if %ERRORLEVEL% neq 0 goto end
unzip ..\libgdb-7.4-mingw32.zip
if %ERRORLEVEL% neq 0 goto end
cd ..
wget ftp://ftp.freepascal.org/fpc/dist/3.0.2/docs/doc-pdf.zip
if %ERRORLEVEL% neq 0 goto end
make %2
if %ERRORLEVEL% neq 0 goto end
:end
