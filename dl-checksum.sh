#!/usr/bin/env sh
VER='2.1.3'
DIR=~/Downloads
MIRROR=https://github.com/commercialhaskell/stack/releases/download/v${VER}

dl()
{
    local os=$1
    local arch=$2
    local platform="${os}-${arch}"
    local url=$MIRROR/stack-${VER}-${platform}.tar.gz.sha256
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -SsL $url | awk '{print $1}')
}

printf "  '%s':\n" $VER
dl freebsd x86_64
dl linux aarch64
dl linux arm
dl linux i386
dl linux x86_64-static
dl linux x86_64
dl windows i386
dl windows x86_64
