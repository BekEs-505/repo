#!/bin/sh

dpkg-scanpackages -m ./debs > Packages
rm -r -f /Users/BekEs-505/Documents/GitHub/repo/Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages
