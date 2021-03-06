################################################################################
#      This file is part of Alex@ELEC - http://www.alexelec.in.ua
#      Copyright (C) 2011-2017 Alexandr Zuyev (alex@alexelec.in.ua)
################################################################################

PKG_NAME="libvorbis"
PKG_VERSION="1.3.5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://www.vorbis.com/"
PKG_URL="http://downloads.xiph.org/releases/vorbis/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libogg"
PKG_SECTION="audio"
PKG_SHORTDESC="libvorbis: Lossless audio compression tools using the ogg-vorbis algorithms"
PKG_LONGDESC="Ogg Vorbis is a fully open, non-proprietary, patent-and-royalty-free, general-purpose compressed audio format for mid to high quality (8kHz-48.0kHz, 16+ bit, polyphonic) audio and music at fixed and variable bitrates from 16 to 128 kbps/channel. This places Vorbis in the same competitive class as audio representations such as MPEG-4 (AAC), and similar to, but higher performance than MPEG-1/2 audio layer 3, MPEG-4 audio (TwinVQ), WMA and PAC."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

# package specific configure options
PKG_CONFIGURE_OPTS_TARGET="--enable-static --enable-shared \
                           --with-ogg=$SYSROOT_PREFIX/usr \
                           --disable-oggtest \
                           --disable-docs \
                           --disable-examples"
