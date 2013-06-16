cp output/x86_64-win64/log log.64.%1
cp output/x86_64-win64/longlog longlog.64.%1
cp output/x86_64-win64/faillist faillist.64.%1
set /a old=%1-1
diff faillist.64.%old% faillist.64.%1
