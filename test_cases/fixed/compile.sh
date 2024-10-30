#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Loop through all .c files in the current directory
for file in *.c; do
    exe="${file%.c}"
    lindtool cptest $exe
done

