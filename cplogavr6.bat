cp output/avr-embedded/log log.avr6.%1
cp output/avr-embedded/longlog longlog.avr6.%1
cp output/avr-embedded/faillist faillist.avr6.%1
set /a old=%1-1
diff faillist.avr6.%old% faillist.avr6.%1
