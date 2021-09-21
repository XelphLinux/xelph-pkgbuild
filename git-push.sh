#!/bin/bash
rm -rf ./3rdparty_pkgbuild/3rdparty
git add --all .
echo "Write your commit message!"
read input
git commit -m "$input"
git push
echo "Git Push Done"
