#!/bin/bash

qnx_dir=${PWD}/qnx

# Function for apply a patch
# $1 arg is the directory
# $2 arg is the patch name
qnx_patch () {
    cd $1
    git apply --whitespace=nowarn ${qnx_dir}/patches/$2
    cd -
}

# Apply QNX patches
qnx_patch ./third_party/foxi foxi.patch
qnx_patch ./third_party/XNNPACK XNNPACK.patch
qnx_patch ./third_party/kineto kineto.patch
