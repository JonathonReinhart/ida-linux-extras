#!/bin/bash
# IDA Linux is a 32-bit application (even IDA 64).
# Run this script when installing IDA Linux to ensure
# all required 32-bit libraries are installed.

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sudo yum install \
    glib2.i686 \
    freetype.i686 \
    libSM.i686 \
    libICE.i686 \
    libXrender.i686 \
    libX11.i686 \
    libXext.i686 \
    fontconfig.i686 \
    python-libs.i686

# Install desktop shortcut (launcher)
cp $DIR/ida64.desktop ~/.local/share/applications/
