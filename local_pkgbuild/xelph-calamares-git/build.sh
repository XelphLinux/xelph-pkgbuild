#!/bin/sh
echo "################################################################"
echo "################### Making the package"
echo "################################################################"
filename=$(echo $(pwd| awk -v FS='/' '{print $NF}')"-"$(cat ./PKGBUILD | grep "pkgver="|awk -v FS='=' '{print $NF}')"-")
ls ../../../xelph-repo/x86_64/ | grep $filename | xargs -I {} rm -rf ../../../xelph-repo/x86_64/{}
updpkgsums
makepkg -sc --noconfirm
yes| yay -c
mv *.pkg.tar.zst ../../../xelph-repo/x86_64/
echo "################################################################"
echo "################### Moved the .zst file to x86_64 folder"
echo "################################################################"
sudo rm -rf pkg
sudo rm -rf src
find . -type f  | grep -i "calamares-.*$"  | xargs rm -rf
