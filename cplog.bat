@echo off
echo Copying log to tests/log.%1
cp output/i386-win32/log log.%1 || exit /b %ERRORLEVEL%
echo Copying longlog to tests/longlog.%1
cp output/i386-win32/longlog longlog.%1 || exit /b %ERRORLEVEL%
echo Copying faillist to tests/faillist.%1
cp output/i386-win32/faillist faillist.%1 || exit /b %ERRORLEVEL%
set /a old=%1-1
echo Diffing %old% and %1
diff faillist.%old% faillist.%1
