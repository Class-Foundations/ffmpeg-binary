#!/bin/sh

set -e

function get_it() {
    wget https://johnvansickle.com/ffmpeg/$2$1
    mv -f $1.1 $1
}

get_it release-readme.txt

for arch in i686 amd64 arm64 armel armhf; do
    get_it ffmpeg-release-$arch-static.tar.xz.md5 releases/
    get_it ffmpeg-release-$arch-static.tar.xz releases/
done
