#!/bin/bash
LLVM_CONFIG=/usr/bin/llvm-config32 \
meson setup build-32/ --prefix=/usr --libdir=lib32 --libexecdir=lib32 --sbindir=bin --auto-features=enabled \
   --cross-file=cross-i686.txt \
   -Dbuildtype=release \
   -Dplatforms=x11,wayland \
   -Dgallium-drivers=r600,radeonsi \
   -Dvulkan-drivers=amd \
   -Degl=enabled \
   -Dgbm=enabled \
   -Dglx=dri \
   -Dllvm=enabled \
   -Dshared-llvm=enabled \
   -Ddraw-use-llvm=true \
   -Damd-use-llvm=true \
   -Dshader-cache=enabled \
   -Dgallium-va=enabled \
   -Dgallium-mediafoundation=disabled \
   -Dvalgrind=disabled \
   -Dlibunwind=disabled \
   -Dlmsensors=disabled \
   -Dzstd=enabled \
   -Dgles1=enabled \
   -Dgles2=enabled \
   -Dxmlconfig=enabled \
   -Dandroid-libbacktrace=disabled \
   -Dintel-rt=disabled
