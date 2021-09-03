#!/usr/bin/env bash

mkdir -p build

for dir in ./src/*; do
    name=$(basename $dir)
    echo $name
    mkdir -p "build/$name"
    cd "build/$name"
    cmake -DCMAKE_TOOLCHAIN_FILE=${POLLY_ROOT}/gcc-static.cmake "../../src/$name"
    cmake --build .
done;