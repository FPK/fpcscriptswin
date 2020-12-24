@echo off
echo Copying log to tests/log.%1
cp output/i386-win32/log log.%1
echo Copying longlog to tests/longlog.%1
cp output/i386-win32/longlog longlog.%1
echo Copying faillist to tests/faillist.%1
cp output/i386-win32/faillist faillist.%1
set /a old=%1-1
echo Diffing %old% and %1
diff faillist.%old% faillist.%1
