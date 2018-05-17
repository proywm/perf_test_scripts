# perf_test_scripts

lockup twice on this perf sample:
# PID, TID, IP, ADDR, LOCAL WEIGHT, DSRC, SYMBOL
381 381 0xffffffff8102a9e3 0xffff88021f50e2c0 0 0x5080144 /lib/modules/4.15.0-rc4/build/vmlinux:__switch_to


steps to reproduce:
1) build test13.c and run
2) check r.sh to collect perf events.
