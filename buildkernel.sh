#!/bin/bash

# This build script was written and tested on a pure 64 bit system.
# Change KBUILD_AFLAGS -mtune= to the right option for your cpu, read "man as" for more details.
# Change flto= to the number of cores you have, example flto=2 for 2 cores.
# Change make -j 2 to the number of cores you have, example make -j 2 for 2 cores.
# Change KBUILD_AFLAGS -mamd64 to -mintel64 if you use an intel CPU.

echo "Starting kernel build script"

KBUILD_CPPFLAGS="-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -U_GLIBCXX_ASSERTIONS -D_GLIBCXX_ASSERTIONS"
KBUILD_CFLAGS="-m64 -w -g0 -O2 -march=native -mtune=native -fomit-frame-pointer -fstack-protector-strong -fstack-clash-protection -pipe -fuse-linker-plugin -flto=2 -ffat-lto-objects"
KBUILD_CXXFLAGS="${KBUILD_CFLAGS} -fvisibility-inlines-hidden"
KBUILD_LDFLAGS="--as-needed -melf_x86_64 -O2 --sort-common --enable-new-dtags --hash-style=gnu -z combreloc -z now -z relro -z separate-code -z noexecstack -z global -z interpose -z common-page-size=4096 --no-omagic --force-group-allocation --compress-debug-sections=zlib-gnu --build-id=none -flto=2"
KBUILD_AFLAGS="-Wa,-Os -Wa,-acdn -Wa,-mtune=generic64 -Wa,--strip-local-absolute -Wa,-mrelax-relocations=yes -Wa,-mamd64 -Wa,--64"

KCPPFLAGS="${KBUILD_CPPFLAGS}"
KCFLAGS="${KBUILD_CFLAGS}"
KCXXFLAGS="${KBUILD_CXXFLAGS}"
KLDFLAGS="${KBUILD_LDFLAGS}"
KAFLAGS="${KBUILD_AFLAGS}"

export KCPPFLAGS KCFLAGS KCXXFLAGS KLDFLAGS KAFLAGS

make -s -S
