#!/bin/bash
# IDA Linux is a 32-bit application (even IDA 64).
# Run this script when installing IDA Linux to ensure
# all required 32-bit libraries are installed.

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sudo dpkg --add-architecture i386

sudo apt-get update

sudo apt-get install \
    libstdc++6:i386 \
    libglib2.0-0:i386 \
    libfreetype6:i386 \
    libsm6:i386 \
    libice6:i386 \
    libxrender1:i386 \
    libx11-6:i386 \
    libxext6:i386 \
    libfontconfig1:i386 \
    libpython2.7:i386

# Install desktop shortcut (launcher)
#cp $DIR/ida64.desktop ~/.local/share/applications/
