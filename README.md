**Kconfig.hz**

5ms (200Hz) kernel interrupt timer frequency for the linux kernel to achieve stability by not being too fast or too slow, but in the middle on the low latency spectrum.

**.config**

This is an initial starting linux kernel .config with useful options enabled for low latency (mrtelekinesis flavour) 

**buildkernel.sh**

This is a build script written to optimize the linux kernel with GCC optimization flags for performance and more security on x86 systems.

this script needs to be copied to the main kernel directory and executed with sh buildkernel.sh


**Sources:**

man (manual pages) (Linux command)

info (software utility) (Linux command)

Linux kernel sources (linux-x.x.x/)
