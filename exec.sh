#!/bin/bash

arch=$(uname -m)
linux_os=$(lsb_release -is)

# get distro info and check 
if ! grep -qE "^(RedHat|CentOS|Ubuntu)$" <<<"$linux_os"; then
    echo "The current operating system ($os_info) is not supported."
    exit 1
fi

echo $linux_os
# Get current linux platform architecture

