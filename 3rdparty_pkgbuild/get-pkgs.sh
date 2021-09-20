#!/bin/sh
rm -rf 3rdparty
cat ./aurpackages | xargs -P $(nproc) -I {} git clone https://aur.archlinux.org/{}.git ./3rdparty/{}
cat ./aurpackages | xargs -P $(nproc) -I {} rm -rf ./3rdparty/{}/.git
cat ./aurpackages | xargs -P $(nproc) -I {} cp ./build.sh ./3rdparty/{}/
# test all packages with namcap
