cp output/msdos/log log.msdos.%1
cp output/msdos/longlog longlog.msdos.%1
cp output/msdos/faillist faillist.msdos.%1
set /a old=%1-1
diff faillist.msdos.%old% faillist.msdos.%1
