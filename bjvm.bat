rm build-stamp.jvm-java
fptime make all OVERRIDEVERSIONCHECK=1 %* -j "OPTNEW=%MYOPTJVM%" "OS_TARGET=java" "CPU_TARGET=jvm"
