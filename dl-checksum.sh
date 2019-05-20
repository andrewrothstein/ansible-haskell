#!/usr/bin/env sh
VER='1.9.3'
DIR=~/Downloads
MIRROR=https://github.com/commercialhaskell/stack/releases/download/v${VER}

dl()
{
    OS=$1
    PLATFORM=$2
    URL=$MIRROR/stack-${VER}-${OS}-${PLATFORM}.tar.gz.sha256
    printf "# $URL\n"
    printf "$OS-$PLATFORM: sha256:"
    curl -SsL $URL | awk '{print $1}'
}


dl freebsd x86_64
dl linux aarch64
dl linux arm
dl linux i386
dl linux x86_64-gmp4
dl linux x86_64-static
dl linux x86_64
dl windows i386
dl windows x86_64
