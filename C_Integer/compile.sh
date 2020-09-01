#!/usr/bin/env bash

echo "------------------------------------------------------"
echo "COMPILING $1"
clang -O0 -emit-llvm -Xclang -disable-O0-optnone -S $1 -o $1.pass0.llvm
opt-mp-9.0 -mem2reg -instnamer -S $1.pass0.llvm > $1.pass1.llvm
