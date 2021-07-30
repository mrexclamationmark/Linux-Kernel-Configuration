**Kconfig.hz**

5ms (200Hz) kernel interrupt timer frequency for the linux kernel to achieve stability on the low latency spectrum, by not being too fast or too slow, but in the middle (a balance), minimizeing jitter.

**.config**

This is an initial starting linux kernel .config (mrtelekinesis flavour) this is WIP

**buildkernel.sh**

This is a build script written to optimize the linux kernel with GCC optimization flags for performance and more security on x86 systems.

this script needs to be copied to the main kernel directory and executed with sh buildkernel.sh


**Sources:**

man (software utility, manual pages) (Linux command)

info (software utility) (Linux command)

Linux kernel sources (linux-x.x.x/)
