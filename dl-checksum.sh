#!/usr/bin/env sh
VER=2.11.1
DIR=~/Downloads
MIRROR=https://github.com/github/hub/releases/download

dl()
{
    OS=$1
    PLATFORM=$2
    SUFFIX=$3
    FILE=hub-${OS}-${PLATFORM}-${VER}.${SUFFIX}
    wget -O $DIR/$FILE $MIRROR/v${VER}/$FILE
}

dl darwin amd64 tgz
dl freebsd 386 tgz
dl freebsd amd64 tgz
dl linux 386 tgz
dl linux amd64 tgz
dl linux arm tgz
dl linux arm64 tgz
dl windows 386 zip
dl windows amd64 zip
sha256sum $DIR/hub-*-$VER.*

