**Please read the files and make backups before using them.**

**Navigation:**
 
GNU-Linux-Configuration: https://github.com/mrexclamationmark/GNU-Linux-Configuration
 
GNU-Linux-Scripts: https://github.com/mrexclamationmark/GNU-Linux-Scripts

**Kconfig.hz**

3.125ms (320Hz) kernel interrupt timer frequency for the linux kernel to obtain stability on the low latency spectrum.

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
