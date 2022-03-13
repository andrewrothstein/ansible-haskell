#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/commercialhaskell/stack/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local platform="${os}-${arch}"
    local url=$MIRROR/v${ver}/stack-${ver}-${platform}.tar.gz.sha256
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -SsL $url | awk '{print $1}')
}

dl_ver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux x86_64
    dl $ver osx x86_64
    dl $ver windows x86_64
}

dl_ver ${1:-2.7.5}
