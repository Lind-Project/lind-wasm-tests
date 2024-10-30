#!/bin/bash

# List of commands to run (you can modify this list)
commands=(
    "lindtool run chdir_getcwd"
    "lindtool run exit"
    "lindtool run fstat"
    "lindtool run hello"
    "lindtool run pipe2"
    "lindtool run read"
    "lindtool run sleep"
    "lindtool run uds-serverclient"
    "lindtool run chmod"
    "lindtool run fchdir"
    "lindtool run fstatfs"
    "lindtool run ioctl"
    # "lindtool run pipeinput"
    "lindtool run readbytes"
    "lindtool run socket"
    "lindtool run write"
    "lindtool run creat_access"
    "lindtool run fchmod"
    "lindtool run fsync"
    "lindtool run makepipe"
    # "lindtool run pipeinput2"
    "lindtool run rename"
    "lindtool run socketpair"
    "lindtool run writeloop"
    "lindtool run dnstest"
    "lindtool run fdatasync"
    "lindtool run getcwd"
    "lindtool run malloc"
    "lindtool run pipeonestring"
    "lindtool run segfault"
    "lindtool run stat"
    "lindtool run writepartial"
    "lindtool run doubleclose"
    "lindtool run filetest"
    "lindtool run gethostname"
    "lindtool run mkdir_rmdir"
    "lindtool run pipepong"
    "lindtool run sem_forks"
    "lindtool run statfs"
    "lindtool run dup"
    "lindtool run filetest1000"
    "lindtool run getpid"
    "lindtool run mutex"
    "lindtool run pipewrite"
    "lindtool run sem_forks_2"
    "lindtool run sync_file_range"
    "lindtool run dup2"
    "lindtool run flock"
    "lindtool run getppid"
    "lindtool run noforkfiles"
    "lindtool run poll"
    "lindtool run serverclient"
    "lindtool run truncate"
    "lindtool run dupwrite"
    "lindtool run forkandopen"
    "lindtool run getuid"
    "lindtool run pipe"
    "lindtool run pread_pwrite"
    "lindtool run uds-getsockname"
)

# Function to pause and wait for spacebar
wait_for_space() {
    echo "Press n to continue..."
    while true; do
        read -rsn1 input  # Read a single character silently (-s), no echo (-n1)
        if [[ $input == "n" ]]; then
            break  # Continue if spacebar is pressed
        fi
    done
}

# Loop through the list of commands and execute them
for cmd in "${commands[@]}"; do
    echo "Executing: $cmd"
    eval "$cmd"  # Execute the command

    # Pause and wait for spacebar
    wait_for_space
    echo ""
done

echo "All commands executed."

