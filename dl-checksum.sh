#!/usr/bin/env sh
VER=2.12.7
DIR=~/Downloads
MIRROR=https://github.com/github/hub/releases/download

dl()
{
    local os=$1
    local arch=$2
    local suffix=$3
    local file=hub-${os}-${arch}-${VER}.${suffix}
    local dlfile=$DIR/$file
    local url=$MIRROR/v${VER}/$file
    if [ ! -e $dlfile ];
    then
        wget -q -O $dlfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s-%s: sha256:%s\n" $os $arch `sha256sum $dlfile | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl darwin amd64 tgz
dl freebsd 386 tgz
dl freebsd amd64 tgz
dl linux 386 tgz
dl linux amd64 tgz
dl linux arm tgz
dl linux arm64 tgz
dl windows 386 zip
dl windows amd64 zip
