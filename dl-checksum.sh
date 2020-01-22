#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/github/hub/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local suffix=$4
    local file=hub-${os}-${arch}-${ver}.${suffix}
    local dlfile=$DIR/$file
    local url=$MIRROR/v${ver}/$file
    if [ ! -e $dlfile ];
    then
        wget -q -O $dlfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s-%s: sha256:%s\n" $os $arch `sha256sum $dlfile | awk '{print $1}'`
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64 tgz
    dl $ver freebsd 386 tgz
    dl $ver freebsd amd64 tgz
    dl $ver linux 386 tgz
    dl $ver linux amd64 tgz
    dl $ver linux arm tgz
    dl $ver linux arm64 tgz
    dl $ver windows 386 zip
    dl $ver windows amd64 zip
}

dl_ver ${1:-2.14.0}
