#!/bin/sh
rm -rf ./3rdparty_pkgbuild/3rdparty
cd ./3rdparty_pkgbuild
./get-pkgs.sh
cd 3rdparty
for d in ./*/ ; do (cd "$d" && ./build.sh); done
cd ../../local_pkgbuild
for d in ./*/ ; do (cd "$d" && ./build.sh); done
yes | yay -c
