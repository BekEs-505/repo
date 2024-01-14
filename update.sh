#!/bin/sh

dpkg-scanpackages -m ./debs > Packages
rm -r -f /var/mobile/repo/Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages
