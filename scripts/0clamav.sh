#!/bin/sh
#License: CC0
#Description: Hypatia conversion script for ClamAV databases (GPL-2.0)

#sudo -i freshclam
origDir="$PWD"
mkdir /tmp/mss
cd /tmp/mss
cp /var/lib/clamav/main.c*d .
cp /var/lib/clamav/daily.c*d .
sigtool -u main.c*d
sigtool -u daily.c*d

mv /tmp/mss/*.fp* "$origDir/exclusions/"
mv /tmp/mss/*.hsb "$origDir/raw/"
mv /tmp/mss/*.hdb "$origDir/raw/"
mv /tmp/mss/*.hdu "$origDir/raw/"
mv /tmp/mss/*.hsu "$origDir/raw/"
