make clean "$@" -j "OS_TARGET=atari" "CPU_TARGET=m68k"
fptime make all OVERRIDEVERSIONCHECK=1 "$@" -j "CROSSOPT=-XV -Avasm -XP" "OS_TARGET=atari" "CPU_TARGET=m68k"