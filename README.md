**Kconfig.hz**

5ms kernel interrupt timer frequency for the linux kernel to achieve stability by not being too fast or too slow, but in the middle.

5ms << Low Latency, Low Throughput, Use this millisecond value if you are using the desktop

50ms << Mid Latency, Mid Throughput, Use this millisecond value if you are using the console only

500ms << High Latency, High Throughput

**buildkernel.sh**

This is a build script written to optimize the linux kernel with GCC optimization flags for performance and more security on x86 systems.

this script needs to be copied to the main kernel directory and executed with sh buildkernel.sh
