#!/bin/bash

CC="/home/clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04/bin/clang-16 -pthread --sysroot=/home/lind-wasm/glibc/sysroot -Wl,--import-memory --target=wasm32-wasi-threads"

for input in testsuite/*.c; do
  output="testsuite/$(basename $input .c).wasm"

  if [ "$input" -nt "$output" ]; then
    echo "Compiling $input"
    $CC "$input" testsuite/wasi_thread_spawn.S -o "$output"
  fi
done
