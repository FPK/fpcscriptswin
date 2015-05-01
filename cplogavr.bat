cp output/avr-embedded/log log.avr.%1
cp output/avr-embedded/longlog longlog.avr.%1
cp output/avr-embedded/faillist faillist.avr.%1
set /a old=%1-1
diff faillist.avr.%old% faillist.avr.%1
