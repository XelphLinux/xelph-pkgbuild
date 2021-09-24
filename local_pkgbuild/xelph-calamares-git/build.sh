#!/bin/sh
echo "################################################################"
echo "################### Making the package"
echo "################################################################"
updpkgsums
makepkg -sc --noconfirm
yes| yay -c
mkdir -p ../../x86_64
mv *.pkg.tar.zst ../../x86_64
echo "################################################################"
echo "################### Moved the .zst file to x86_64 folder"
echo "################################################################"
sudo rm -rf pkg
sudo rm -rf src
find . -type f  | grep -i "calamares-.*$"  | xargs rm -rf
