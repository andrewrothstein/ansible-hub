#!/usr/bin/env sh
VER=2.12.0
DIR=~/Downloads
MIRROR=https://github.com/github/hub/releases/download

dl()
{
    OS=$1
    PLATFORM=$2
    SUFFIX=$3
    FILE=hub-${OS}-${PLATFORM}-${VER}.${SUFFIX}
    DLFILE=$DIR/$FILE
    URL=$MIRROR/v${VER}/$FILE
    wget -q -O $DLFILE $URL
    printf "# %s\n%s-%s: sha256:%s\n" $URL $OS $PLATFORM `sha256sum $DLFILE | awk '{print $1}'`
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


