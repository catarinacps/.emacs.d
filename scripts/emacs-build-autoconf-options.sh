#!/usr/bin/bash

export conf

conf=(
    --prefix=/usr
    --sysconfdir=/etc
    --libexecdir=/usr/lib
    --localstatedir=/var
    --mandir=/usr/share/man
    --with-gameuser=:games
    --with-sound=alsa
    --with-modules
    --without-libotf
    --without-m17n-flt
    --without-gconf
    --without-gsettings
    --enable-link-time-optimization
    --with-native-compilation
    --without-x
    --without-xaw3d
    --without-ns
    --with-pgtk
    --with-cairo
    --with-sound=no
    --without-gpm
)
