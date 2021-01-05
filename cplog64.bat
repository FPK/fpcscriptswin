@echo off
echo Copying log to tests/log.64.%1
cp output/x86_64-win64/log log.64.%1
echo Copying longlog to tests/longlog.64.%1
cp output/x86_64-win64/longlog longlog.64.%1
echo Copying faillist to tests/faillist.64.%1
cp output/x86_64-win64/faillist faillist.64.%1
set /a old=%1-1
echo Diffing %old% and %1
diff faillist.64.%old% faillist.64.%1
