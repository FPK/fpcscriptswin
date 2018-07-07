rm build-stamp.jvm-java
fptime make all OVERRIDEVERSIONCHECK=1 %1 %2 %3 %4 %5 %6 %7 %8 %9 -j "OPTNEW=%MYOPTJVM%" "OS_TARGET=java" "CPU_TARGET=jvm"
