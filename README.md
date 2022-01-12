**Navigation:**
 
GNU-Linux-Configuration: https://github.com/mrtelekinesis/GNU-Linux-Configuration
 
GNU-Linux-Scripts: https://github.com/mrtelekinesis/GNU-Linux-Scripts

**Please read the files carefully before using it. You are responsible for actions done to your system. If you need some help understanding on what some of the files do, there is many documentations out there to read as you can find them using a search engine**

**Kconfig.hz**

5ms (200Hz) kernel interrupt timer frequency for the linux kernel to achieve stability on the low latency spectrum, by not being too fast or too slow, but in the middle (a balance), minimizing jitter.

**buildkernel.sh**

This is a build script written to optimize the linux kernel with GCC optimization flags for performance and more security on x86 systems.

this script needs to be copied to the main kernel directory and executed with sh buildkernel.sh

**Makefile.patch**

These lines are needed for buildkernel.sh to work (KBUILD_CXXFLAGS, KBUILD_LDFLAGS)

Simply copy this patch to the main kernel directory and run "patch -p1 < Makefile.patch"

**Sources:**

man (software utility, manual pages) (Linux command)

info (software utility) (Linux command)

Linux kernel sources (linux-x.x.x/)
