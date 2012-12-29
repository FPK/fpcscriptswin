cp output/i386-win32/log log.%1
cp output/i386-win32/longlog longlog.%1
cp output/i386-win32/faillist faillist.%1
set /a old=%1-1
diff faillist.%old% faillist.%1