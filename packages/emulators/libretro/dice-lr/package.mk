# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025-present ROCKNIX (https://github.com/ROCKNIX)

PKG_NAME="dice-lr"
PKG_VERSION="67943c3e4dddd4d18ae5c23b99cc5cfa39b86b5f"
PKG_LICENSE="GPLv3"
PKG_SITE="https://git.libretro.com/libretro/dice-libretro"
PKG_URL="${PKG_SITE}/-/archive/${PKG_VERSION}/dice-libretro-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="DICE is a Discrete Integrated Circuit Emulator. It emulates computer systems that lack any type of CPU, consisting only of discrete logic components."

PKG_TOOLCHAIN="make"

make_target() {
   make -C ${PKG_BUILD} -f Makefile
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp dice_libretro.so ${INSTALL}/usr/lib/libretro/
}
