#!/bin/bash

function run-powershell {
    powershell -NoProfile -ExecutionPolicy Bypass -Command "$1"
}

function get-path {
    run-powershell "[Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::User)"
}

function set-path {
    run-powershell "[Environment]::SetEnvironmentVariable('PATH', \"$1\", [EnvironmentVariableTarget]::User)"
}

function current-directory {
    run-powershell "[IO.Directory]::GetCurrentDirectory()"
}

# Grab the script from GitHub
script=$(curl -sSL 'https://github.com/jamesqo/bomr/raw/master/bomr')

# Write it out to AppData/Local
cd ~/AppData/Local
mkdir bomr && cd bomr
echo "$script" > bomr

# Make sure bomr is executable
chmod +x bomr

# Add ourselves to PATH if not in it
which bomr &> /dev/null
if [ $? -ne 0 ]; then
    currentpath=$(get-path)
    lastchar="${currentpath: -1}"
    if [ $lastchar = ';' ]; then
        set-path "$currentpath$(current-directory)"
    else
        set-path "$currentpath;$(current-directory)"
    fi
fi
